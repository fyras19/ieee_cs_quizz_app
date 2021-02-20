import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class FirstScreen extends StatefulWidget {

  static const routeName='firstscreen';

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Text("screen1",style: TextStyle(fontSize: 25),),
        leading:
        Icon(Icons.eighteen_mp),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Quiz!",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
