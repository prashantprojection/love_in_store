import 'package:flutter/material.dart';

// Custom Text Form Field
class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool? required;
  final TextEditingController? controller;
  final bool enabled;
  final TextInputType? keyboardType;

  const CustomTextField(
      {Key? key,
      required this.hintText,
      this.required,
      required this.enabled,
      this.controller,
      this.keyboardType})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          '${widget.hintText}:${widget.required == true ? ' *' : ''}',
          style: const TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w500,
              fontSize: 13),
        ),
        TextField(
            controller: widget.controller,
            enabled: widget.enabled,
            keyboardType: widget.keyboardType,
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
}
