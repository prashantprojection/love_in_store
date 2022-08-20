class MasterCityList {
  MasterCityList({
    this.cityId,
    this.stateId,
    this.cityName,
  });

  dynamic cityId;
  int? stateId;
  String? cityName;

  factory MasterCityList.fromMap(Map<String, dynamic> json) => MasterCityList(
        cityId: json["CityId"],
        stateId: json["StateId"] ?? '',
        cityName: json["CityName"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "CityId": cityId,
        "StateId": stateId ?? '',
        "CityName": cityName ?? '',
      };
}
