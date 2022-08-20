import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:love_in_store/database/database.dart';
import 'package:love_in_store/model/bank_details_model.dart';
import 'package:love_in_store/screens/agreement_screen.dart';
import 'package:love_in_store/utils/controllers.dart';
import 'package:love_in_store/widgets/custom_elevated_button.dart';
import 'package:love_in_store/widgets/custom_text_field.dart';

class BankDetailsScreen extends StatefulWidget {
  static const String id = 'BankDetails';
  const BankDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BankDetailsScreen> createState() => _BankDetailsScreenState();
}

class _BankDetailsScreenState extends State<BankDetailsScreen> {
  DatabaseHelper database = DatabaseHelper();
  ImagePicker picker = ImagePicker();
  // ignore: prefer_typing_uninitialized_variables
  var _image;
  bool isSave = false;
  bool isEnable = true;
  String? dsrId;

  getDataFromDB() async {
    BankDetailsModel model = await database.retrieveFromDBBank(dsrId);

    bankNameController.text = model.bankName ?? '';
    ifscCodeController.text = model.ifscCode ?? '';
    accountNumberController.text = model.accountNumber ?? '';
    accountHolderNameController.text = model.accountHolderName ?? '';
  }

  @override
  Widget build(BuildContext context) {
    dsrId = ModalRoute.of(context)!.settings.arguments.toString();
    getDataFromDB();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
                hintText: 'Bank Name',
                controller: bankNameController,
                required: true,
                enabled: isEnable),
            CustomTextField(
                hintText: 'IFSC Code',
                controller: ifscCodeController,
                required: true,
                enabled: isEnable),
            CustomTextField(
                hintText: 'Bank Account Number',
                controller: accountNumberController,
                keyboardType: TextInputType.number,
                required: true,
                enabled: isEnable),
            CustomTextField(
                hintText: 'Account Holder Name',
                controller: accountHolderNameController,
                required: true,
                enabled: isEnable),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              child: Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Cancelled Cheque Photo:',
                    style: TextStyle(color: Colors.red),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          child: _image != null
                              ? Image.file(
                                  _image,
                                  height: 180,
                                )
                              : const SizedBox(
                                  height: 200,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.deepOrange,
                                    foregroundColor: Colors.white,
                                    child: Icon(Icons.image_rounded),
                                  )),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Wrap(
                                  children: [
                                    ListTile(
                                      title: const Text("Camera",
                                          style:
                                              TextStyle(color: Colors.black)),
                                      onTap: getImageFromCamera,
                                    ),
                                    ListTile(
                                      title: const Text(
                                        "Gallery",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      onTap: getImageFromGallery,
                                    ),
                                    ListTile(
                                      title: const Text("Cancel",
                                          style:
                                              TextStyle(color: Colors.black)),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }),
                      const Text(
                        'Upload Image',
                        style: TextStyle(color: Colors.deepOrange),
                      )
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: isSave
                  ? Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: CustomElevatedButton(
                              text: 'EDIT',
                              onPressed: () {
                                setState(() {
                                  isSave = !isSave;
                                  isEnable = !isEnable;
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
                              navigate: Agreement.id,
                            ))
                      ],
                    )
                  : CustomElevatedButton(
                      text: 'Save',
                      onPressed: () async {
                        if (bankNameController.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Bank Name is required");
                        } else if (ifscCodeController.text.isEmpty) {
                          Fluttertoast.showToast(msg: "IFSC Code is required");
                        } else if (accountNumberController.text.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Account Number is required");
                        } else if (accountHolderNameController.text.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Account Holder's Name is required");
                        } else {
                          await database.updateIntoBankDetailsDB(
                              BankDetailsModel(
                                  accountHolderName:
                                      accountHolderNameController.text,
                                  accountNumber: accountNumberController.text,
                                  bankName: bankNameController.text,
                                  ifscCode: ifscCodeController.text),
                              dsrId: dsrId);
                          setState(() {
                            isSave = !isSave;
                            isEnable = !isEnable;
                          });
                        }
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }

  getImageFromCamera() async {
    var image = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File('${image?.path}');
    });
  }

  getImageFromGallery() async {
    var image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File('${image?.path}');
    });
  }
}
