import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nityo_temp/component/activity/activity_cubit.dart';
import 'package:nityo_temp/component/activity/activity_entity.dart';
import 'package:nityo_temp/widget/button_app.dart';
import 'package:nityo_temp/widget/input_app.dart';

class AddActivity extends StatefulWidget {
  final String judul;
  final String deskripsi;
  final String waktu;
  final int id;
  const AddActivity(
      {this.judul = "",
      this.deskripsi = "",
      this.waktu = "",
      this.id = 0,
      super.key});

  @override
  State<AddActivity> createState() => _AddActivityState();
}

class _AddActivityState extends State<AddActivity> {
  final TextEditingController controllerJudul = TextEditingController();
  final TextEditingController controllerDeskripsi = TextEditingController();
  final TextEditingController controllerWaktu = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    controllerJudul.text = widget.judul;
    controllerDeskripsi.text = widget.deskripsi;
    controllerWaktu.text = widget.waktu;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tambah Activity")),
        body: BlocListener<ActivityUpdateCubit, ActivityState>(
          listener: (context, state) => {
            if (state.isUpdateLoadedState)
              {
                context.read<ActivityCubit>().getData(),
                Navigator.pushNamed(context, '/'),
              }
          },
          child: BlocListener<ActivityAddCubit, ActivityState>(
            listener: (context, state) => {
              if (state.isLoadedAddState)
                {
                  context.read<ActivityCubit>().getData(),
                  Navigator.pushNamed(context, '/'),
                }
            },
            child: Container(
              padding: EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    InputApp(
                      label: "Judul",
                      controller: controllerJudul,
                      value: controllerJudul.text,
                    ),
                    InputApp(
                      label: "Deskripsi",
                      controller: controllerDeskripsi,
                      value: controllerDeskripsi.text,
                    ),
                    InputApp(
                      label: "Waktu",
                      type: "TIME",
                      controller: controllerWaktu,
                      value: controllerWaktu.text,
                      onChange: (text) {},
                    ),
                    ButtonApp(
                      label: widget.judul == "" ? "Simpan" : "Ubah",
                      color: Colors.lightBlue,
                      onPressed: () async {
                         widget.judul==""? context.read<ActivityAddCubit>().addData(ActivityEntity(
                              judul: controllerJudul.text,
                              deskripsi: controllerDeskripsi.text,
                              waktu: controllerWaktu.text))
                              :
                              context.read<ActivityUpdateCubit>().updateData(ActivityEntity(
                              id: widget.id,
                              judul: controllerJudul.text,
                              deskripsi: controllerDeskripsi.text,
                              waktu: controllerWaktu.text));
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
