import 'package:flutter/material.dart';

class Ansewer extends StatelessWidget {
  final String ansewerText;
  final Function x;

  Ansewer(this.x,this.ansewerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child: RaisedButton(
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80.0),
    ),
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(ansewerText,style: TextStyle(fontSize: 25),),
        onPressed: x,
      ),
    );
  }
}