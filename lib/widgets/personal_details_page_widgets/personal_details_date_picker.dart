import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';


// Date Picker Widget
class PersonalDetailsDateTimePicker extends StatefulWidget {
  final String hintText;
  final bool required;
  final TextEditingController controller;

  const PersonalDetailsDateTimePicker(
      {Key? key,
      required this.hintText,
      required this.required,
      required this.controller})
      : super(key: key);

  @override
  State<PersonalDetailsDateTimePicker> createState() => _PersonalDetailsDateTimePickerState();
}

class _PersonalDetailsDateTimePickerState extends State<PersonalDetailsDateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          '${widget.hintText}:${widget.required == true ? ' *' : ''}',
          style: const TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w500,
              fontSize: 13),
        ),
        TextField(
            controller: widget.controller,
            onTap: () async {
              String dateTime = await showDateTimePicker(context);
              setState(() {
                widget.controller.text = dateTime;
              });
            },
            showCursor: false,
            readOnly: true,
            decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                border: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red))))
      ]),
    );
  }

  showDateTimePicker(BuildContext context) async {
    DateTime today = DateTime.now();
    int currentYear = today.year;
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime(currentYear - 18),
        firstDate: DateTime(1960),
        lastDate: DateTime(currentYear - 18));
    return formatDate(pickedDate!, [dd, '-', mm, '-', yyyy]).toString();
  }
}
