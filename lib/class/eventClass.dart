import 'dart:convert';

List<EventClass> eventClassFromJson(String str) =>
    List<EventClass>.from(json.decode(str).map((x) => EventClass.fromJson(x)));

String eventClassToJson(List<EventClass> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EventClass {
  EventClass({
    this.id,
    this.imgUrl,
    this.name,
    this.speaker,
    this.speakerDes,
    this.date,
    this.venue,
    this.organizer,
    this.createdBy,
    this.v,
  });

  String id;
  String imgUrl;
  String name;
  String speaker;
  String speakerDes;
  String date;
  String venue;
  String organizer;
  String createdBy;
  int v;

  factory EventClass.fromJson(Map<String, dynamic> json) => EventClass(
        id: json["_id"],
        imgUrl: json["imgURL"] == null ? null : json["imgURL"],
        name: json["name"],
        speaker: json["speaker"],
        speakerDes: json["speakerDes"] == null
            ? "No description given"
            : json["speakerDes"],
        date: json["date"] == null ? "No date given" : json["date"],
        venue: json["venue"],
        organizer: json["organizer"],
        createdBy: json["createdBy"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "imgURL": imgUrl == null ? null : imgUrl,
        "name": name,
        "speaker": speaker,
        "speakerDes": speakerDes,
        "date": date == null ? null : date,
        "venue": venue,
        "organizer": organizer,
        "createdBy": createdBy,
        "__v": v,
      };
}
