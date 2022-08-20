// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

signatureState(BuildContext context) {
  SignatureController controller = SignatureController();
  // ignore: prefer_typing_uninitialized_variables
  var data;
  return showDialog(
      context: context,
      builder: (context) {
        double height = MediaQuery.of(context).size.height;
        double width = MediaQuery.of(context).size.width;
        return Dialog(
          child: SizedBox(
            height: height / 2,
            child: Column(
              children: [
                const Text('Signature'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    signElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        width: width,
                        text: 'Cancel'),
                    signElevatedButton(
                        onPressed: () {
                          controller.clear();
                        },
                        width: width,
                        text: 'Clear'),
                    signElevatedButton(
                        onPressed: () async {
                          if (controller.isNotEmpty) {
                            data = await controller.toPngBytes();
                            if (data != null) {
                              Navigator.of(context).pop(data);
                            }
                          }
                        },
                        width: width,
                        text: 'Save')
                  ],
                ),
                Expanded(
                  child: Signature(
                    controller: controller,
                    backgroundColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        );
      });
}

signElevatedButton(
    {required double width, Function()? onPressed, String? text}) {
  return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(minimumSize: Size(width * 0.29, 50)),
      child: Text(text ?? ''));
}
