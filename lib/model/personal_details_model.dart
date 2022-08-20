// To parse this Map data, do
//
//     final personalDetailsModel = personalDetailsModelFromMap(jsonString);

import 'dart:convert';

import 'package:love_in_store/database/constants.dart';

PersonalDetailsModel personalDetailsModelFromMap(String str) => PersonalDetailsModel.fromMap(json.decode(str));

String personalDetailsModelToMap(PersonalDetailsModel data) => json.encode(data.toMap());

class PersonalDetailsModel {
  PersonalDetailsModel({
    this.dsrID,
    this.name,
    this.dob,
    this.anniversaryDate,
    this.fatherName,
    this.aadhaarNumber,
    this.aadhaarFrontImage,
    this.aadhaarBackImage,
    this.panCardNumber,
    this.panCardImage,
    // this.contactInformation,
    // this.bankDetails,
  });

  String? dsrID;
  String? name;
  String? dob;
  String? anniversaryDate;
  String? fatherName;
  String? aadhaarNumber;
  String? aadhaarFrontImage;
  String? aadhaarBackImage;
  String? panCardNumber;
  String? panCardImage;
  // ContactInformationModel? contactInformation;
  // BankDetailsModel? bankDetails;

  factory PersonalDetailsModel.fromMap(Map<String, dynamic> json) => PersonalDetailsModel(
    dsrID: json[kDsrID],
    name: json[kName],
    dob: json[kDob],
    anniversaryDate: json[kAnniversaryDate],
    fatherName: json[kFatherName],
    aadhaarNumber: json[kAadhaarNumber],
    aadhaarFrontImage: json[kAadhaarFrontImage],
    aadhaarBackImage: json[kAadhaarBackImage],
    panCardNumber: json[kPanCardNumber],
    panCardImage: json[kPanCardImage],
    // contactInformation: ContactInformationModel.fromMap(json["contactInformation"]),
    // bankDetails: BankDetailsModel.fromMap(json["bankDetails"]),
  );

  Map<String, dynamic> toMap() => {
    kDsrID: dsrID??'',
    kName: name??'',
    kDob: dob??'',
    kAnniversaryDate: anniversaryDate??'',
    kFatherName: fatherName??'',
    kAadhaarNumber: aadhaarNumber??'',
    kAadhaarFrontImage: aadhaarFrontImage??'',
    kAadhaarBackImage: aadhaarBackImage??'',
    kPanCardNumber: panCardNumber??'',
    kPanCardImage: panCardImage??'',
    // "contactInformation": ContactInformationModel().toMap(),
    // "bankDetails": BankDetailsModel().toMap(),
  };
}