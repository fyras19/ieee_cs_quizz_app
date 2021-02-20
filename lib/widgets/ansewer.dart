import 'package:flutter/material.dart';

class Ansewer extends StatelessWidget {
  final String ansewerText;
  final Function x;

  Ansewer(this.x,this.ansewerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        Container(

        width: 250,

        child: RaisedButton(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0),

          ),
          color: Colors.blue,
          textColor: Colors.white,
          child: Row(

            children: [
              Padding(padding:EdgeInsets.only(right: 20)),
              Icon(Icons.check_outlined),
              Padding(padding:EdgeInsets.only(right: 40)),
              Center(child: Text(ansewerText,style: TextStyle(fontSize: 25),)),
            ],
          ),
          onPressed: x,
        ),
        ),


      ],



    );
  }
}