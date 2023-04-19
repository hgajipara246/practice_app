import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, title: Text("Iamge Picker")),
      body: SafeArea(
        child: Column(
          children: [
            // DatePickerDialog(initialDate: initialDate, firstDate: firstDate, lastDate: lastDate)
          ],
        ),
      ),
    );
  }
}
