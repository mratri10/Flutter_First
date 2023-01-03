import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nityo_temp/component/activity/activity_cubit.dart';
import 'package:nityo_temp/component/activity/activity_entity.dart';
import 'package:nityo_temp/widget/button_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // const FULL_WIDTH =
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Home Screen"),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BlocListener<ActivityDeleteCubit, ActivityState>(
              listener: (context, state) => {
                if (state.isDeleteLoadedState)
                  {
                    context.read<ActivityCubit>().getData(),
                  }
              },
              child: BlocBuilder<ActivityCubit, ActivityState>(
                  builder: (context, state) {
                if (state.isListLoadedState) {
                  List<ActivityEntity> dataList = state.dataList!;
                  return Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: ListView.builder(
                        itemCount: dataList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          dataList[index].judul!,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0),
                                        ),
                                        Text(dataList[index].deskripsi!),
                                      ],
                                    ),
                                    Text(dataList[index].waktu!),
                                    Text(dataList[index].id.toString()),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ButtonApp(
                                        label: "Update",
                                        color: Colors.blueGrey,
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/tambah-aktivitas',
                                          arguments: dataList[index]);
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: ButtonApp(
                                        label: "Delete",
                                        color: Colors.redAccent,
                                        onPressed: () {
                                          context
                                              .read<ActivityDeleteCubit>()
                                              .deleteData(dataList[index]);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }
                return Center(
                  child: Container(child: Text('Loading...')),
                );
              }),
            )
          ],
        ),
        floatingActionButton: ButtonApp(
          onPressed: () {
            Navigator.pushNamed(context, '/tambah-aktivitas',
                arguments: ActivityEntity());
          },
          color: Colors.lightBlue,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                "Aktivitas",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
