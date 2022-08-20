class TicketSubjectList {
  TicketSubjectList({
    this.childTicketSubjectList,
    this.ticketSubjectId,
    this.ticketSubjectName,
  });

  List<dynamic>? childTicketSubjectList;
  int? ticketSubjectId;
  String? ticketSubjectName;

  factory TicketSubjectList.fromMap(Map<String, dynamic> json) =>
      TicketSubjectList(
        childTicketSubjectList:
            List<dynamic>.from(json["ChildTicketSubjectList"].map((x) => x)),
        ticketSubjectId: json["TicketSubjectId"] ?? '',
        ticketSubjectName: json["TicketSubjectName"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "ChildTicketSubjectList":
            List<dynamic>.from(childTicketSubjectList!.map((x) => x)),
        "TicketSubjectId": ticketSubjectId ?? '',
        "TicketSubjectName": ticketSubjectName ?? '',
      };
}
