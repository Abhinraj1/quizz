

///Users model
class UserModel{
  String? name;
  String? userid;
  List scores;
  int? highestScore;

  UserModel({
    this.name,
    required this.scores,
    this.userid,
    this.highestScore
});

  ///To add data to database
  Map<String, dynamic> toMap()  {
    return {
      "userid" : userid,
      'name': name,
      'scores': scores,
      "highestScore" : highestScore
    };
  }

  static UserModel fromJson(Map<String, dynamic> json)=> UserModel(
    userid: json["userid"],
    name: json["name"],
    scores: json["scores"],
      highestScore:json["highestScore"]
      );
}