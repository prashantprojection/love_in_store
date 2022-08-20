class DaburReasonList {
  DaburReasonList({
    this.reasonId,
    this.reasonName,
  });

  String? reasonId;
  String? reasonName;

  factory DaburReasonList.fromMap(Map<String, dynamic> json) => DaburReasonList(
        reasonId: json["ReasonID"] ?? '',
        reasonName: json["ReasonName"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "ReasonID": reasonId ?? '',
        "ReasonName": reasonName ?? '',
      };
}
