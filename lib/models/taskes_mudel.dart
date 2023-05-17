class TaskeModel {
  String id;
  String titel;
  String describtion;
  bool statues;
  int date;

  TaskeModel(
      {this.id = "",
      required this.titel,
      required this.describtion,
      required this.statues,
      required this.date});

  TaskeModel fromJson(Map<String, dynamic> json) {
    TaskeModel model = TaskeModel(
      id: json['id'],
      titel: json['titel'],
      describtion: json['describtion'],
      statues: json['statues'],
      date: json['date'],
    );
    return model;
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "titel": titel,
      "describtion": describtion,
      "statues": statues,
      "date": date,
    };
  }

// TaskeModel.fromJson(Map<String,dynamic>json):this(
//   id:json['id'],
//    titel:json['titel'],
//    describtion:json['describtion'],
//    statues:json['statues'],
//    date:json['date'],
// );
}
