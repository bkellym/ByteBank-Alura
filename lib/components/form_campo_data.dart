import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  final TextEditingController dateController;
  const DatePicker({Key? key, required this.dateController}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    widget.dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        readOnly: true,
        controller: widget.dateController,
        decoration: const InputDecoration(hintText: 'dd/mm/aaaa'),
        onTap: () async {
          var date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2100));
          widget.dateController.text = date.toString().substring(0, 10);
        },
      ),
    );
  }
}
