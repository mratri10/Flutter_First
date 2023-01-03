import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nityo_temp/component/profile/profile_cubit.dart';
import 'package:nityo_temp/widget/button_app.dart';
import 'package:nityo_temp/widget/input_app.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Profile")),
      body: Container(
        margin: EdgeInsets.all(20),
        child: BlocBuilder<PasswordHandleCubit, bool>(
          builder: (context, statePassword) {
            return Column(
              children: [
                Text(
                  "Masukan Data Profile",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                // InputApp(label: "Nama Depan", iconInput: Icon(Icons.person)),
                // InputApp(label: "Nama Belakang", iconInput: Icon(Icons.person)),
                // InputApp(label: "Email", iconInput: Icon(Icons.mail)),
                // statePassword? InputApp(
                //           label: "Password", iconInput: Icon(Icons.key)):SizedBox(),
                // statePassword? InputApp(
                //           label: "Password Konfirmasi", iconInput: Icon(Icons.key)):SizedBox(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonApp(
                      label: "Simpan",
                      color: Colors.green,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ButtonApp(
                      label: !statePassword?"Ubah Password":"Simpan New Password",
                      color: Colors.redAccent,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      onPressed: () {
                        context.read<PasswordHandleCubit>().handlePass(!statePassword);
                      },
                    )
                  ],
                )
              ],
            );
          }
        ),
      ),
    );
  }
}
