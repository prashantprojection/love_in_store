class StoreCategoryList {
  StoreCategoryList({
    this.storeCategoryId,
    this.storeCategoryName,
    this.storeCategoryCode,
    this.isEnabled,
  });

  String? storeCategoryId;
  String? storeCategoryName;
  String? storeCategoryCode;
  String? isEnabled;

  factory StoreCategoryList.fromMap(Map<String, dynamic> json) =>
      StoreCategoryList(
        storeCategoryId: json["StoreCategoryId"] ?? '',
        storeCategoryName: json["StoreCategoryName"] ?? '',
        storeCategoryCode: json["StoreCategoryCode"] ?? '',
        isEnabled: json["IsEnabled"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "StoreCategoryId": storeCategoryId ?? '',
        "StoreCategoryName": storeCategoryName ?? '',
        "StoreCategoryCode": storeCategoryCode ?? '',
        "IsEnabled": isEnabled ?? '',
      };
}
