class ProductList {
  ProductList({
    this.productId,
    this.clientId,
    this.productName,
    this.productCode,
    this.description,
    this.cost,
    this.defaultScore,
    this.productCategoryId,
    this.productCategory,
    this.largePhotoPath,
    this.smallPhotoPath,
    this.isAppEnabled,
    this.isEnabled,
    this.askPhoto,
    this.askQuantity,
    this.isAvailableAsk,
    this.tags,
    this.productNote,
    this.productFor,
    this.productForId,
    this.isHasPromo,
    this.buyQuanitity,
    this.promoNote,
    this.promoType,
    this.classicMultiplication,
    this.classicLimitType,
    this.platinumMultiplication,
    this.platinumLimitType,
    this.titaniumMultiplication,
    this.titaniumLimitType,
    this.isRequired,
    this.storeClassId,
    this.storeCategoryId,
    this.khClub,
    this.wiproProductType,
    this.isFacingEnabled,
    this.isCompetitionBenchmarking,
    this.dlp,
    this.rlp,
  });

  String? productId;
  String? clientId;
  String? productName;
  String? productCode;
  String? description;
  String? cost;
  String? defaultScore;
  String? productCategoryId;
  String? productCategory;
  String? largePhotoPath;
  String? smallPhotoPath;
  String? isAppEnabled;
  String? isEnabled;
  String? askPhoto;
  String? askQuantity;
  String? isAvailableAsk;
  String? tags;
  String? productNote;
  String? productFor;
  String? productForId;
  String? isHasPromo;
  String? buyQuanitity;
  String? promoNote;
  String? promoType;
  String? classicMultiplication;
  String? classicLimitType;
  String? platinumMultiplication;
  String? platinumLimitType;
  String? titaniumMultiplication;
  String? titaniumLimitType;
  String? isRequired;
  String? storeClassId;
  String? storeCategoryId;
  String? khClub;
  String? wiproProductType;
  String? isFacingEnabled;
  String? isCompetitionBenchmarking;
  dynamic dlp;
  dynamic rlp;

  factory ProductList.fromMap(Map<String, dynamic> json) => ProductList(
        productId: json["ProductId"] ?? '',
        clientId: json["ClientId"] ?? '',
        productName: json["ProductName"] ?? '',
        productCode: json["ProductCode"] ?? '',
        description: json["Description"] ?? '',
        cost: json["Cost"] ?? '',
        defaultScore: json["DefaultScore"] ?? '',
        productCategoryId: json["ProductCategoryId"] ?? '',
        productCategory: json["ProductCategory"] ?? '',
        largePhotoPath: json["LargePhotoPath"] ?? '',
        smallPhotoPath: json["SmallPhotoPath"] ?? '',
        isAppEnabled: json["IsAppEnabled"] ?? '',
        isEnabled: json["IsEnabled"] ?? '',
        askPhoto: json["AskPhoto"] ?? '',
        askQuantity: json["AskQuantity"] ?? '',
        isAvailableAsk: json["IsAvailableAsk"] ?? '',
        tags: json["Tags"] ?? '',
        productNote: json["ProductNote"] ?? '',
        productFor: json["ProductFor"] ?? '',
        productForId: json["ProductForId"] ?? '',
        isHasPromo: json["IsHasPromo"] ?? '',
        buyQuanitity: json["BuyQuanitity"] ?? '',
        promoNote: json["PromoNote"] ?? '',
        promoType: json["PromoType"] ?? '',
        classicMultiplication: json["ClassicMultiplication"] ?? '',
        classicLimitType: json["ClassicLimitType"] ?? '',
        platinumMultiplication: json["PlatinumMultiplication"] ?? '',
        platinumLimitType: json["PlatinumLimitType"] ?? '',
        titaniumMultiplication: json["TitaniumMultiplication"] ?? '',
        titaniumLimitType: json["TitaniumLimitType"] ?? '',
        isRequired: json["IsRequired"] ?? '',
        storeClassId: json["StoreClassId"] ?? '',
        storeCategoryId: json["StoreCategoryId"] ?? '',
        khClub: json["KHClub"] ?? '',
        wiproProductType: json["WiproProductType"] ?? '',
        isFacingEnabled: json["IsFacingEnabled"] ?? '',
        isCompetitionBenchmarking: json["IsCompetitionBenchmarking"] ?? '',
        dlp: json["DLP"],
        rlp: json["RLP"],
      );

  Map<String, dynamic> toMap() => {
        "ProductId": productId ?? '',
        "ClientId": clientId ?? '',
        "ProductName": productName ?? '',
        "ProductCode": productCode ?? '',
        "Description": description ?? '',
        "Cost": cost ?? '',
        "DefaultScore": defaultScore ?? '',
        "ProductCategoryId": productCategoryId ?? '',
        "ProductCategory": productCategory ?? '',
        "LargePhotoPath": largePhotoPath ?? '',
        "SmallPhotoPath": smallPhotoPath ?? '',
        "IsAppEnabled": isAppEnabled ?? '',
        "IsEnabled": isEnabled ?? '',
        "AskPhoto": askPhoto ?? '',
        "AskQuantity": askQuantity ?? '',
        "IsAvailableAsk": isAvailableAsk ?? '',
        "Tags": tags ?? '',
        "ProductNote": productNote ?? '',
        "ProductFor": productFor ?? '',
        "ProductForId": productForId ?? '',
        "IsHasPromo": isHasPromo ?? '',
        "BuyQuanitity": buyQuanitity ?? '',
        "PromoNote": promoNote ?? '',
        "PromoType": promoType ?? '',
        "ClassicMultiplication": classicMultiplication ?? '',
        "ClassicLimitType": classicLimitType ?? '',
        "PlatinumMultiplication": platinumMultiplication ?? '',
        "PlatinumLimitType": platinumLimitType ?? '',
        "TitaniumMultiplication": titaniumMultiplication ?? '',
        "TitaniumLimitType": titaniumLimitType ?? '',
        "IsRequired": isRequired ?? '',
        "StoreClassId": storeClassId ?? '',
        "StoreCategoryId": storeCategoryId ?? '',
        "KHClub": khClub ?? '',
        "WiproProductType": wiproProductType ?? '',
        "IsFacingEnabled": isFacingEnabled ?? '',
        "IsCompetitionBenchmarking": isCompetitionBenchmarking ?? '',
        "DLP": dlp,
        "RLP": rlp,
      };
}
