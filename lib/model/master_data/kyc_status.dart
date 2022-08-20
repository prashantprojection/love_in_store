import 'enum_values.dart';
import 'kyc_status_kyc_doc.dart';

class Kycstatus {
  Kycstatus({
    this.kycdoc,
    this.id,
    this.kycTypeName,
    this.statusCode,
    this.status,
  });

  List<KycstatusKycdoc>? kycdoc;
  int? id;
  String? kycTypeName;
  int? statusCode;
  Status? status;

  factory Kycstatus.fromMap(Map<String, dynamic> json) => Kycstatus(
        kycdoc: List<KycstatusKycdoc>.from(
            json["kycdoc"].map((x) => KycstatusKycdoc.fromMap(x))),
        id: json["id"] ?? '',
        kycTypeName: json["KYCTypeName"] ?? '',
        statusCode: json["statusCode"] ?? '',
        status: statusValues.map![json["status"]],
      );

  Map<String, dynamic> toMap() => {
        "kycdoc": List<dynamic>.from(kycdoc!.map((x) => x.toMap())),
        "id": id ?? '',
        "KYCTypeName": kycTypeName ?? '',
        "statusCode": statusCode ?? '',
        "status": statusValues.reverse![status],
      };
}
