// ignore_for_file: constant_identifier_names

enum Status { NOT_UPLOADED }

final statusValues = EnumValues({"Not Uploaded": Status.NOT_UPLOADED});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map!.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
