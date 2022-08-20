class KycstatusKycdoc {
  KycstatusKycdoc({
    this.kycDocName,
    this.documentStatus,
  });

  String? kycDocName;
  int? documentStatus;

  factory KycstatusKycdoc.fromMap(Map<String, dynamic> json) => KycstatusKycdoc(
        kycDocName: json["KYCDocName"] ?? '',
        documentStatus: json["documentStatus"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "KYCDocName": kycDocName ?? '',
        "documentStatus": documentStatus ?? '',
      };
}
