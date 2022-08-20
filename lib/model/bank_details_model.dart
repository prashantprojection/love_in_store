import 'package:love_in_store/database/constants.dart';

class BankDetailsModel {
  BankDetailsModel({
    this.bankName,
    this.ifscCode,
    this.accountNumber,
    this.accountHolderName,
    this.cancelledChequeImage,
  });

  String? bankName;
  String? ifscCode;
  String? accountNumber;
  String? accountHolderName;
  String? cancelledChequeImage;

  factory BankDetailsModel.fromMap(Map<String, dynamic> json) => BankDetailsModel(
    bankName: json[kBankName],
    ifscCode: json[kIfscCode],
    accountNumber: json[kAccountNumber],
    accountHolderName: json[kAccountHolderName],
    cancelledChequeImage: json[kCancelledChequeImage],
  );

  Map<String, dynamic> toMap() => {
    kBankName: bankName??'',
    kIfscCode: ifscCode??'',
    kAccountNumber: accountNumber??'',
    kAccountHolderName: accountHolderName??'',
    kCancelledChequeImage: cancelledChequeImage??'',
  };
}