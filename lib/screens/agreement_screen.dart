import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:love_in_store/screens/number_verification_screen.dart';
import 'package:love_in_store/widgets/custom_elevated_button.dart';
import 'package:love_in_store/widgets/signature.dart';

class Agreement extends StatefulWidget {
  static const String id = 'Agreement';
  const Agreement({Key? key}) : super(key: key);

  @override
  State<Agreement> createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
  // ignore: prefer_typing_uninitialized_variables
  var sign;
  bool isSave = false;
  bool agreeToProgramTermsAndConditions = false;
  bool agreeToReceiveCommunication = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agreement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Agree to terms and conditions of programmer: *',
              style: TextStyle(
                  color: Colors.deepOrange,
                  decoration: TextDecoration.underline),
            ),
            Row(
              children: [
                Checkbox(
                    value: agreeToProgramTermsAndConditions,
                    onChanged: (value) {
                      setState(() {
                        agreeToProgramTermsAndConditions = value!;
                      });
                    }),
                const Text('Yes')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Agree to received communication: *',
              style: TextStyle(color: Colors.deepOrange),
            ),
            Row(
              children: [
                Checkbox(
                    value: agreeToReceiveCommunication,
                    onChanged: (value) {
                      setState(() {
                        agreeToReceiveCommunication = value!;
                      });
                    }),
                const Text('Yes')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Add Digital Signature: *',
              style: TextStyle(color: Colors.deepOrange),
            ),
            GestureDetector(
              onTap: () async {
                var data = await signatureState(context);
                if (data != null) {
                  sign = data;
                  setState(() {});
                }
              },
              child: Container(
                height: 250,
                width: width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1)),
                child: sign == null ? Container() : Image.memory(sign),
              ),
            ),
            isSave
                ? Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: CustomElevatedButton(
                            text: 'EDIT',
                            onPressed: () {
                              setState(() {
                                isSave = !isSave;
                              });
                            },
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Flexible(
                          flex: 1,
                          child: CustomElevatedButton(
                            text: 'NEXT',
                            navigate: NumberVerification.id,
                          ))
                    ],
                  )
                : CustomElevatedButton(
                    text: 'Save',
                    onPressed: () {
                      if (agreeToProgramTermsAndConditions == false) {
                        Fluttertoast.showToast(
                            msg:
                                'Please Agree to Program Terms and Conditions');
                      } else if (agreeToReceiveCommunication == false) {
                        Fluttertoast.showToast(
                            msg: 'Please Agree to Receive Communication');
                      } else {
                        setState(() {
                          isSave = !isSave;
                        });
                      }
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
