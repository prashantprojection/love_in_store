import 'package:flutter/material.dart';

class ProfileTextField extends StatefulWidget {
  final String hintText;
  const ProfileTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  State<ProfileTextField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: TextField(
        style:
            const TextStyle(color: Colors.black26, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            hintText: widget.hintText,
            border: const OutlineInputBorder(),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black45,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red))),
      ),
    );
  }
}
