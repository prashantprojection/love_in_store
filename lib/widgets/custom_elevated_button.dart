import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String? navigate;
  final Function()? onPressed;
  final String? argument;
  const CustomElevatedButton(
      {Key? key,
      required this.text,
      this.navigate,
      this.onPressed,
      this.argument})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: ElevatedButton(
          onPressed: navigate != null
              ? () {
                  Navigator.pushNamed(context, navigate!, arguments: argument);
                }
              : (onPressed ?? () {}),
          style: ElevatedButton.styleFrom(
              minimumSize: Size(width, 60),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13))),
          child: Text(text)),
    );
  }
}
