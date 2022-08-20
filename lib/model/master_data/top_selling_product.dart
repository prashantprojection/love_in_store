class TopSellingProduct {
  TopSellingProduct({
    this.productId,
    this.clientId,
    this.displayOrder,
  });

  int? productId;
  String? clientId;
  String? displayOrder;

  factory TopSellingProduct.fromMap(Map<String, dynamic> json) =>
      TopSellingProduct(
        productId: json["ProductId"] ?? '',
        clientId: json["ClientId"] ?? '',
        displayOrder: json["DisplayOrder"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "ProductId": productId ?? '',
        "ClientId": clientId ?? '',
        "DisplayOrder": displayOrder ?? '',
      };
}
