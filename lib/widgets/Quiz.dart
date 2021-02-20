import 'package:flutter/material.dart';
import 'ansewer.dart';
import 'question.dart';



class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsIndex;
  final Function ansewerQuestions;


  Quiz(this.questions,this.ansewerQuestions,this.questionsIndex);



  @override
  Widget build(BuildContext context) {
    return  Column(
      children:<Widget>[
        Question(questions[questionsIndex]["questionText"]),

        ...(questions[questionsIndex]["answers"] as List<Map<String,Object>>).map((answer){
          return Ansewer(()=>ansewerQuestions(answer["score"]), answer["text"]);
        }).toList(),
      ],
    );

  }
}