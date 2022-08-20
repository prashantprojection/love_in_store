import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcon;
  final bool? isObscure;
  const CustomTextField(
      {Key? key,
      this.controller,
      this.hintText,
      this.prefixIcon,
      this.isObscure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure ?? false,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.deepOrange,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.deepOrange),
              borderRadius: BorderRadius.circular(8)),
          enabled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8)),
          hintText: hintText ?? '',
          hintStyle: const TextStyle(color: Colors.white),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.red,
          )),
    );
  }
}
