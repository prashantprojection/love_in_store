import 'package:flutter/material.dart';
import 'package:love_in_store/screens/otp_verification_screen.dart';
import 'package:love_in_store/utils/controllers.dart';
import 'package:love_in_store/widgets/custom_elevated_button.dart';
import 'package:love_in_store/widgets/custom_text_field.dart';

class NumberVerification extends StatelessWidget {
  static const String id = 'NumberVerification';
  const NumberVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: Column(
        children: [
          CustomTextField(
              hintText: 'Enter Mobile Number',
              controller: mobileNumberController,
              enabled: false),
          Text(
            'Address: ${currentAddressController.text}, ${cityController.text}, ${stateController.text}',
            style: const TextStyle(color: Colors.black54),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: CustomElevatedButton(
              text: 'SUBMIT',
              navigate: OTPVerification.id,
            ),
          )
        ],
      ),
    );
  }
}
