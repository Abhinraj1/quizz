

/// Questions model
class QuestionsModel{
  String? id;
  String? question;
  List? options;
  String? correct;
  int? selectedOption = 5;

  QuestionsModel({
    this.id,
    this.question,
   this.correct,
    this.selectedOption,
    this.options
  });


  ///To add data to database
  Map<String, dynamic> toMap()  {
    return {
      "id" : id,
      'question': question,
      'correct': correct,
      'selectedOption': selectedOption,
      'options': options,
    };
  }

  static QuestionsModel fromJson(Map<String, dynamic> json)=> QuestionsModel(
    id: json["id"],
    question: json["question"],
    options: json["options"],
    correct: json["correct"],
    selectedOption: json["selectedOption"]
  );



}

