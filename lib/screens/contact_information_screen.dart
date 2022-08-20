import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:love_in_store/database/database.dart';
import 'package:love_in_store/model/contact_information_model.dart';
import 'package:love_in_store/screens/bank_details_screen.dart';
import 'package:love_in_store/utils/controllers.dart';
import 'package:love_in_store/utils/drop_down_menu_items.dart';
import 'package:love_in_store/widgets/custom_drop_down.dart';
import 'package:love_in_store/widgets/custom_elevated_button.dart';
import 'package:love_in_store/widgets/custom_text_field.dart';

class ContactInformationScreen extends StatefulWidget {
  static const String id = 'ContactInformation';
  const ContactInformationScreen({Key? key}) : super(key: key);

  @override
  State<ContactInformationScreen> createState() => _ContactInformationScreenState();
}

class _ContactInformationScreenState extends State<ContactInformationScreen> {
  DatabaseHelper database = DatabaseHelper();
  bool isSave = false;
  bool isEnable = true;
  String? dsrId;

  getDataFromDB()async{
    ContactInformationModel model = await database.retrieveFromDBContact(dsrId);

    currentAddressController.text = model.currentAddress??'';
    stateController.text = model.state??'';
    cityController.text = model.city??'';
    pinCodeController.text = model.pinCode??'';
    emailIDController.text = model.emailId??'';
    mobileNumberController.text = model.mobileNumber??'';
    landlineNumberController.text = model.landlineNumber??'';
    emergencyContactPersonController.text = model.emergencyContactName??'';
    emergencyContactNumberController.text = model.emergencyContactNumber??'';
  }

  @override
  Widget build(BuildContext context) {
    dsrId = ModalRoute.of(context)!.settings.arguments.toString();
    getDataFromDB();
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Information'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hintText: 'Current Address', controller: currentAddressController,keyboardType: TextInputType.streetAddress, required: true, enabled: isEnable),
            CustomDropDown(hintText: 'Select State',activeState: stateController.text, required: true, list: statesList()),
            CustomTextField(hintText: 'City', controller: cityController, required: true, enabled: isEnable),
            CustomTextField(hintText: 'Current PinCode', controller: pinCodeController,keyboardType: TextInputType.number, required: true, enabled: isEnable),
            CustomTextField(hintText: 'Email Id', controller: emailIDController,keyboardType: TextInputType.emailAddress, enabled: isEnable),
            CustomTextField(hintText: 'Mobile Number', controller: mobileNumberController,keyboardType: TextInputType.phone, required: true, enabled: isEnable),
            CustomTextField(hintText: 'Landline Number', controller: landlineNumberController,keyboardType: TextInputType.phone, enabled: isEnable),
            CustomTextField(hintText: 'Emergency Contact Name', controller: emergencyContactPersonController, enabled: isEnable),
            CustomTextField(hintText: 'Emergency Contact Number', controller: emergencyContactNumberController,keyboardType: TextInputType.phone, enabled: isEnable),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0,0,15.0,0),
              child: isSave?Row(
                children: [
                  Flexible(flex: 1, child: CustomElevatedButton(text: 'EDIT',onPressed: (){setState((){
                    isSave = !isSave;
                    isEnable = !isEnable;
                  });},)),
                  const SizedBox(width: 10,),
                  Flexible(flex: 1, child: CustomElevatedButton(text: 'NEXT',navigate: BankDetailsScreen.id, argument: dsrId,))
                ],
              ):CustomElevatedButton(text: 'Save',onPressed: ()async{
                if(currentAddressController.text.isEmpty){
                Fluttertoast.showToast(msg: "Current Address is required");
                }else if(stateController.text.isEmpty){
                  Fluttertoast.showToast(msg: 'Please Select a State');
                }else if(cityController.text.isEmpty){
                  Fluttertoast.showToast(msg: "City is required");
                }else if(pinCodeController.text.isEmpty){
                  Fluttertoast.showToast(msg: "PinCode is required");
                }else if(mobileNumberController.text.isEmpty){
                  Fluttertoast.showToast(msg: "Mobile Number is required");
                }else {
                  await database.updateIntoContactInformationDB(ContactInformationModel(
                    city: cityController.text,
                    currentAddress: currentAddressController.text,
                    emailId: emailIDController.text,
                    emergencyContactName: emergencyContactPersonController.text,
                    emergencyContactNumber: emergencyContactNumberController.text,
                    landlineNumber: landlineNumberController.text,
                    mobileNumber: mobileNumberController.text,
                    pinCode: pinCodeController.text,
                    state: stateController.text
                  ),dsrId: dsrId);
                  setState(() {
                    isSave = !isSave;
                    isEnable = !isEnable;
                  });
                }
              },),
            )
          ],
        ),
      ),
    );
  }
}
