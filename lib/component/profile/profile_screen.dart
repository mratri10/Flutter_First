import 'package:flutter/material.dart';
import 'package:nityo_temp/widget/button_app.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 100,
            width: 100,
            decoration: BoxDecoration(border: Border.all(width: 1)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: [
                ListData("Name", "Atri Alfa", index: 0),
                ListData("Email", "atri@gmail.com"),
                ListData("Jenis Kelamin", "Laki-Laki")
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonApp(
            label: "Ubah Data",
            color: Colors.amber,
            onPressed: () {
              Navigator.pushNamed(context, '/edit-profile');
            },
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 30,
            ),
          ),
        ],
      ),
    );
  }
}

Widget ListData(String variabel, String value, {int? index}) {
  return Column(
    children: [
      index != 0
          ? SizedBox(
              height: 20,
            )
          : SizedBox(),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 100,
              child: Text(
                variabel,
              )),
          Text(":"),
          Expanded(
              child: Row(
            children: [Text(value)],
            mainAxisAlignment: MainAxisAlignment.end,
          ))
        ],
      ),
    ],
  );
}
