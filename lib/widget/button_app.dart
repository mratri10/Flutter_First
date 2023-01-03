import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  Function()? onPressed;
  String? label;
  Color? color;
  EdgeInsets? padding;
  Widget? child;

  ButtonApp(
      {this.color,
      this.label="",
      this.padding,
      this.onPressed,
      this.child,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(backgroundColor: color),
      child: Container(
        padding: padding,
        child:label ==''?
        child: Text(
          label!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
