import 'associate_kyc_status_kyc_doc.dart';
import 'enum_values.dart';

class Associatekycstatus {
  Associatekycstatus({
    this.kycdoc,
    this.kycTypeName,
    this.statusCode,
    this.status,
  });

  List<AssociatekycstatusKycdoc>? kycdoc;
  String? kycTypeName;
  int? statusCode;
  Status? status;

  factory Associatekycstatus.fromMap(Map<String, dynamic> json) =>
      Associatekycstatus(
        kycdoc: List<AssociatekycstatusKycdoc>.from(
            json["kycdoc"].map((x) => AssociatekycstatusKycdoc.fromMap(x))),
        kycTypeName: json["KYCTypeName"] ?? '',
        statusCode: json["StatusCode"] ?? '',
        status: statusValues.map![json["Status"]],
      );

  Map<String, dynamic> toMap() => {
        "kycdoc": List<dynamic>.from(kycdoc!.map((x) => x.toMap())),
        "KYCTypeName": kycTypeName ?? '',
        "StatusCode": statusCode ?? '',
        "Status": statusValues.reverse![status],
      };
}
