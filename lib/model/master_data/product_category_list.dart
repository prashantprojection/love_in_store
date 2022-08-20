class ProductCategoryList {
  ProductCategoryList({
    this.productCategoryId,
    this.productCategoryName,
  });

  String? productCategoryId;
  String? productCategoryName;

  factory ProductCategoryList.fromMap(Map<String, dynamic> json) =>
      ProductCategoryList(
        productCategoryId: json["ProductCategoryID"] ?? '',
        productCategoryName: json["ProductCategoryName"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "ProductCategoryID": productCategoryId ?? '',
        "ProductCategoryName": productCategoryName ?? '',
      };
}
