class MasterStateList {
  MasterStateList({
    this.stateId,
    this.stateName,
  });

  int? stateId;
  String? stateName;

  factory MasterStateList.fromMap(Map<String, dynamic> json) => MasterStateList(
        stateId: json["StateId"] ?? '',
        stateName: json["StateName"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "StateId": stateId ?? '',
        "StateName": stateName ?? '',
      };
}
