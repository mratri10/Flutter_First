import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputApp extends StatefulWidget {
  final TextEditingController controller;
  String? placeholder;
  String label;
  String? value;
  Widget? iconInput;
  String? type;
  Function(String)? onChange;

  InputApp({
    required this.controller,
    this.placeholder = "",
    required this.label,
    this.value = "",
    this.iconInput,
    this.type = "",
    this.onChange,
    super.key,
  });

  @override
  State<InputApp> createState() => _InputAppState();
}

class _InputAppState extends State<InputApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: widget.type == "TIME"
          ? TextField(
              controller: widget.controller,
              decoration: new InputDecoration(
                  hintText: widget.placeholder,
                  label: Text(widget.label),
                  icon: widget.iconInput ?? Icon(Icons.question_answer),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0))),
              onTap: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (pickedTime != null) {
                  DateTime parseTime = DateFormat.jm()
                      .parse(pickedTime.format(context).toString());
                  String formatedTime =
                      DateFormat('HH:mm:ss').format(parseTime);
                  widget.onChange!(formatedTime);
                  widget.controller.text = formatedTime;
                }
              },
            )
          : TextFormField(
              controller: widget.controller,
              decoration: new InputDecoration(
                  hintText: widget.placeholder,
                  label: Text(widget.label),
                  icon: widget.iconInput ?? Icon(Icons.question_answer),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0))),
              // initialValue: widget.value??'',
              onChanged: widget.onChange,
            ),
    );
  }
}
