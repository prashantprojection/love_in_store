class GeofenceCategoryList {
  GeofenceCategoryList({
    this.geofenceCategoryId,
    this.geofenceCategoryName,
  });

  int? geofenceCategoryId;
  String? geofenceCategoryName;

  factory GeofenceCategoryList.fromMap(Map<String, dynamic> json) =>
      GeofenceCategoryList(
        geofenceCategoryId: json["GeofenceCategoryId"] ?? '',
        geofenceCategoryName: json["GeofenceCategoryName"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "GeofenceCategoryId": geofenceCategoryId ?? '',
        "GeofenceCategoryName": geofenceCategoryName ?? '',
      };
}
