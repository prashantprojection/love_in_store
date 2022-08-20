class MenuList {
  MenuList({
    this.subMenu,
    this.name,
    this.code,
    this.isActive,
  });

  List<dynamic>? subMenu;
  String? name;
  String? code;
  String? isActive;

  factory MenuList.fromMap(Map<String, dynamic> json) => MenuList(
        subMenu: List<dynamic>.from(json["SubMenu"].map((x) => x)),
        name: json["Name"] ?? '',
        code: json["Code"] ?? '',
        isActive: json["IsActive"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "SubMenu": List<dynamic>.from(subMenu!.map((x) => x)),
        "Name": name ?? '',
        "Code": code ?? '',
        "IsActive": isActive ?? '',
      };
}
