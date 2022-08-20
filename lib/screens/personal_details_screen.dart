import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:love_in_store/database/database.dart';
import 'package:love_in_store/model/personal_details_model.dart';
import 'package:love_in_store/screens/contact_information_screen.dart';
import 'package:love_in_store/utils/controllers.dart';
import 'package:love_in_store/widgets/custom_elevated_button.dart';
import 'package:love_in_store/widgets/personal_details_page_widgets/personal_details_image_picker.dart';

import '../utils/constants.dart';
import '../widgets/personal_details_page_widgets/personal_details_date_picker.dart';
import '../widgets/custom_text_field.dart';

class PersonalDetailsScreen extends StatefulWidget {
  static const String id = 'PersonalDetails';
  const PersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  DatabaseHelper database = DatabaseHelper();
  bool isEnable = true;
  bool isSave = false;
  String? dsrID;

  createData() async {
    await database.insert(dsrId: dsrID);
  }

  getDataFromDB() async {
    PersonalDetailsModel model = await database.retrieveFromDB(dsrID);

    nameController.text = model.name ?? '';
    dobController.text = model.dob ?? '';
    anniversaryDateController.text = model.anniversaryDate ?? '';
    fNameController.text = model.fatherName ?? '';
    aadhaarNumberController.text = model.aadhaarNumber ?? '';
    panNumberController.text = model.panCardNumber ?? '';
  }

  @override
  Widget build(BuildContext context) {
    dsrID = ModalRoute.of(context)!.settings.arguments.toString();
    createData();
    getDataFromDB();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
                hintText: name,
                controller: nameController,
                keyboardType: TextInputType.name,
                required: true,
                enabled: isEnable),
            PersonalDetailsDateTimePicker(
                hintText: dob, required: true, controller: dobController),
            PersonalDetailsDateTimePicker(
                hintText: anniversaryDate,
                required: false,
                controller: anniversaryDateController),
            CustomTextField(
              hintText: fName,
              controller: fNameController,
              keyboardType: TextInputType.name,
              enabled: isEnable,
            ),
            CustomTextField(
                hintText: aadhaarIDNumber,
                controller: aadhaarNumberController,
                keyboardType: TextInputType.number,
                enabled: isEnable),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
              child: Text(
                'Click $aadhaarIDNumber Photo:',
                style: const TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
            const PersonalDetailsImagePicker(
              topText: 'Front Image',
            ),
            const PersonalDetailsImagePicker(
              topText: 'Back Image',
            ),
            CustomTextField(
                hintText: panNumber,
                controller: panNumberController,
                enabled: isEnable),
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 5, 0, 0),
              child: Text(
                'Click PAN Card Photo:',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
            const PersonalDetailsImagePicker(),
            Padding(
              padding: const EdgeInsets.all(15.0),
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
                        Flexible(
                            flex: 1,
                            child: CustomElevatedButton(
                              text: 'NEXT',
                              navigate: ContactInformationScreen.id,
                              argument: dsrID,
                            ))
                      ],
                    )
                  : CustomElevatedButton(
                      text: 'Save',
                      onPressed: () async {
                        if (nameController.text.isEmpty) {
                          Fluttertoast.showToast(msg: "Name is required");
                        } else if (dobController.text.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Date of Birth is required");
                        } else {
                          await database.updateIntoPersonalDetailsDB(
                              PersonalDetailsModel(
                                  dsrID: dsrID,
                                  name: nameController.text,
                                  dob: dobController.text,
                                  fatherName: fNameController.text,
                                  aadhaarNumber: aadhaarNumberController.text,
                                  panCardNumber: panNumberController.text),
                              dsrId: dsrID);
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
}
