import 'package:love_in_store/database/constants.dart';

class ContactInformationModel {
  ContactInformationModel({
    this.currentAddress,
    this.state,
    this.city,
    this.pinCode,
    this.emailId,
    this.mobileNumber,
    this.landlineNumber,
    this.emergencyContactName,
    this.emergencyContactNumber,
  });

  String? currentAddress;
  String? state;
  String? city;
  String? pinCode;
  String? emailId;
  String? mobileNumber;
  String? landlineNumber;
  String? emergencyContactName;
  String? emergencyContactNumber;

  factory ContactInformationModel.fromMap(Map<String, dynamic> json) => ContactInformationModel(
    currentAddress: json[kCurrentAddress],
    state: json[kState],
    city: json[kCity],
    pinCode: json[kPinCode],
    emailId: json[kEmailID],
    mobileNumber: json[kMobileNumber],
    landlineNumber: json[kLandlineNumber],
    emergencyContactName: json[kEmergencyContactPerson],
    emergencyContactNumber: json[kEmergencyContactNumber],
  );

  Map<String, dynamic> toMap() => {
    kCurrentAddress: currentAddress??'',
    kState: state??'',
    kCity: city??'',
    kPinCode: pinCode??'',
    kEmailID: emailId??'',
    kMobileNumber: mobileNumber??'',
    kLandlineNumber: landlineNumber??'',
    kEmergencyContactPerson: emergencyContactName??'',
    kEmergencyContactNumber: emergencyContactNumber??'',
  };
}
