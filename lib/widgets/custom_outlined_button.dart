import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final String? navigate;
  final Function()? onPressed;
  const CustomOutlinedButton(
      {Key? key, required this.text, this.navigate, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: OutlinedButton(
          onPressed: navigate != null
              ? () {
                  Navigator.pushNamed(context, navigate!);
                }
              : (onPressed ?? () {}),
          style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 60),
              side: const BorderSide(color: Colors.red)),
          child: Text(text)),
    );
  }
}
