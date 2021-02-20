import 'package:flutter/material.dart';

class SliderQuestion extends StatefulWidget {
  @override
  _SliderQuestionState createState() => _SliderQuestionState();
}

class _SliderQuestionState extends State<SliderQuestion> {
  int valueOfSlider = 10;
  @override
  Widget build(BuildContext context) {
    //return Container();
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;
    var maxValue = 100;
    var minValue = 1;
    var divisions = 100;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Question #i',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: scrHeight * .02,
            ),
            Text(
              'This is where to type the question?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: scrHeight * .02,
            ),
            Slider(
              onChanged: (value) {
                setState(() {
                  valueOfSlider = value.floor();
                });
              },
              value: valueOfSlider.toDouble(),
              min: minValue.toDouble(),
              max: maxValue.toDouble(),
              divisions: divisions,
              activeColor: Colors.amber,
              inactiveColor: Colors.yellow,
            ),
            SizedBox(
              height: scrHeight * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Text(
                    '$valueOfSlider',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  radius: scrHeight * .07,
                  backgroundColor: Colors.yellowAccent,
                ),
              ],
            ),
            SizedBox(
              height: scrHeight * .05,
            ),
            TextButton(
              onPressed: () {},
              child: SizedBox(
                width: scrWidth * .5,
                child: Center(
                    child: Text(
                  'Confirm',
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
          ],
        ),
      ),
    ));
  }
}
