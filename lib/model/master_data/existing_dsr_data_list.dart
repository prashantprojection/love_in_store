class ExistingDsrDataList {
  ExistingDsrDataList({
    this.distributorCode,
    this.distributorName,
    this.distributorId,
    this.dsrId,
    this.dsrCode,
    this.dsrName,
    this.description,
    this.aadharNumber,
  });

  String? distributorCode;
  String? distributorName;
  String? distributorId;
  String? dsrId;
  String? dsrCode;
  String? dsrName;
  String? description;
  String? aadharNumber;

  factory ExistingDsrDataList.fromMap(Map<String, dynamic> json) =>
      ExistingDsrDataList(
        distributorCode: json["DistributorCode"] ?? '',
        distributorName: json["DistributorName"] ?? '',
        distributorId: json["DistributorId"] ?? '',
        dsrId: json["DSRId"] ?? '',
        dsrCode: json["DSRCode"] ?? '',
        dsrName: json["DSRName"] ?? '',
        description: json["Description"] ?? '',
        aadharNumber: json["AadharNumber"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "DistributorCode": distributorCode ?? '',
        "DistributorName": distributorName ?? '',
        "DistributorId": distributorId ?? '',
        "DSRId": dsrId ?? '',
        "DSRCode": dsrCode ?? '',
        "DSRName": dsrName ?? '',
        "Description": description ?? '',
        "AadharNumber": aadharNumber ?? '',
      };
}
