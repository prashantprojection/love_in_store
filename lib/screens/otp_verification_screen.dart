import 'package:flutter/material.dart';

import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_field.dart';

class OTPVerification extends StatefulWidget {
  static const String id = 'OTPVerificaion';
  const OTPVerification({Key? key}) : super(key: key);

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OTP Verification'), actions: [
        TextButton(onPressed: () {}, child: const Text('Discard'))
      ]),
      body: Column(
        children: const [
          CustomTextField(hintText: 'OTP Verification', enabled: true),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: CustomElevatedButton(text: 'SUBMIT'),
          ),
        ],
      ),
    );
  }
}
