import 'package:flutter/material.dart';

class Ansewer extends StatelessWidget {
  final String ansewerText;
  final Function x;

  Ansewer(this.x, this.ansewerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:
          /* RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(90.0),
        ),
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          ansewerText,
          style: TextStyle(fontSize: 25),
        ),
        onPressed: x,
      ), */
          TextButton(
        onPressed: x,
        child: SizedBox(
          width: (MediaQuery.of(context).size.width) * 0.5,
          child: Center(
              child: Text(
            ansewerText,
            style: TextStyle(fontSize: 24.0, color: Colors.black),
          )),
        ),
        style: TextButton.styleFrom(
            primary: Colors.yellow,
            backgroundColor: Colors.white,
            shape: StadiumBorder(),
            side: BorderSide(
              width: 1.0,
              color: Colors.blue,
            )),
      ),
    );
  }
}
