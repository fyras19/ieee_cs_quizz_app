import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/Quiz.dart';
import '../widgets/result.dart';
import '../main.dart';



class FirstScreen extends StatefulWidget {

  static const routeName='firstscreen';

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {


  bool isSwitched = false;
  int totalScore = 0;
  int questionsIndex = 0;
  int num0 = 0,
      num1 = 0,
      num2 = 0;

  void resetQuiz() {
    setState(() {
      questionsIndex = 0;
      totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  void ansewerQuestions(score) {
    if (questionsIndex == 0)
      num0 = score;
    else if (questionsIndex == 1)
      num1 = score;
    else if (questionsIndex == 2) num2 = score;


    setState(() {
      totalScore += score;
      questionsIndex += 1;
    });
    print(questionsIndex);
    print("Ansewer Questions");
  }


  final List<Map<String, Object>> questions = [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Green", "score": 20},
        {"text": "Yellow", "score": 30},
        {"text": "Blue", "score": 40}
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Lion", "score": 10},
        {"text": "Elephant", "score": 20},
        {"text": "Tiger", "score": 30},
        {"text": "Rabbit", "score": 40}
      ],
    },
    {
      "questionText": "What's your favorite instructor?",
      "answers": [
        {"text": "Hassan1", "score": 10},
        {"text": "Yessine", "score": 20},
        {"text": "Hazem", "score": 30},
        {"text": "Ahmed", "score": 40}
      ],
    },

  ];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        title: Text("Quiz App",style:TextStyle(color: w),),
        actions: <Widget>[
          Switch(
            value: isSwitched,
            onChanged: (value){
              setState(() {
                isSwitched=value;
                if (isSwitched==true){b=Colors.white;w=Colors.black;}
                if (isSwitched==false){b=Colors.black;w=Colors.white;}
              });
            },
            activeColor: Colors.white,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.black,
          ),
        ],
      ),
      body: Container(
          color: w,
          // width: double.infinity,
          child: questionsIndex<questions.length?
          Quiz(questions, ansewerQuestions, questionsIndex)
              :
          Result(resetQuiz,totalScore)



      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back,color: w,size: 40,),
        onPressed: (){

          if (questionsIndex==1) totalScore-=num0;
          if (questionsIndex==2) totalScore-=num1;
          if (questionsIndex==3) totalScore-=num2;

          setState(() {
            if (questionsIndex>0){
              questionsIndex--;
            }
          });
        },
      ),

    );




  }
}

