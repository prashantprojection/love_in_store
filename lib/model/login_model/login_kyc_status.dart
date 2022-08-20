import 'login_kyc_doc.dart';

class Kycstatus {
  Kycstatus({
    this.kycdoc,
    this.id,
    this.kycTypeName,
    this.statusCode,
    this.status,
  });

  List<Kycdoc>? kycdoc;
  int? id;
  String? kycTypeName;
  int? statusCode;
  String? status;

  factory Kycstatus.fromJson(Map<String, dynamic> json) => Kycstatus(
        kycdoc:
            List<Kycdoc>.from(json["kycdoc"].map((x) => Kycdoc.fromJson(x))),
        id: int.parse(json["id"]),
        kycTypeName: json["KYCTypeName"] ?? '',
        statusCode: int.parse(json["id"]),
        status: json["status"] ?? '',
      );
}
