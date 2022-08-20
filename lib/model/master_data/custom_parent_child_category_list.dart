class CustomParentChildCategoryList {
  CustomParentChildCategoryList({
    this.childCategoryList,
    this.productCategoryId,
    this.productCategoryName,
  });

  List<dynamic>? childCategoryList;
  String? productCategoryId;
  String? productCategoryName;

  factory CustomParentChildCategoryList.fromMap(Map<String, dynamic> json) =>
      CustomParentChildCategoryList(
        childCategoryList:
            List<dynamic>.from(json["ChildCategoryList"].map((x) => x)),
        productCategoryId: json["ProductCategoryID"] ?? '',
        productCategoryName: json["ProductCategoryName"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "ChildCategoryList":
            List<dynamic>.from(childCategoryList!.map((x) => x)),
        "ProductCategoryID": productCategoryId ?? '',
        "ProductCategoryName": productCategoryName ?? '',
      };
}
