class Kycdoc {
  Kycdoc({
    this.kycDocName,
    this.documentStatus,
  });

  String? kycDocName;
  int? documentStatus;

  factory Kycdoc.fromJson(Map<String, dynamic> json) => Kycdoc(
        kycDocName: json["KYCDocName"] ?? '',
        documentStatus: int.parse(json["documentStatus"]),
      );
}
