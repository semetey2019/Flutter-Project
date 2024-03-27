import 'dart:convert';

InfoNotif infoNotifFromJson(String str) => InfoNotif.fromJson(json.decode(str));

String infoNotifToJson(InfoNotif data) => json.encode(data.toJson());

class InfoNotif {
  String name;
  String namePic;
  String date;
  int state;

  InfoNotif({
    required this.name,
    required this.namePic,
    required this.date,
    required this.state,
  });

  factory InfoNotif.fromJson(Map<String, dynamic> json) => InfoNotif(
        name: json["name"],
        namePic: json["namePic"],
        date: json["date"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "namePic": namePic,
        "date": date,
        "state": state,
      };
}
