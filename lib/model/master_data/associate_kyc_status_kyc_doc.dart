import 'enum_values.dart';

class AssociatekycstatusKycdoc {
  AssociatekycstatusKycdoc({
    this.kycDocName,
    this.statusCode,
    this.status,
  });

  String? kycDocName;
  int? statusCode;
  Status? status;

  factory AssociatekycstatusKycdoc.fromMap(Map<String, dynamic> json) =>
      AssociatekycstatusKycdoc(
        kycDocName: json["KYCDocName"] ?? '',
        statusCode: json["StatusCode"] ?? '',
        status: statusValues.map![json["Status"]],
      );

  Map<String, dynamic> toMap() => {
        "KYCDocName": kycDocName ?? '',
        "StatusCode": statusCode ?? '',
        "Status": statusValues.reverse![status],
      };
}
