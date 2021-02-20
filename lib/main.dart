import './screens/screen_1.dart';
import './screens/Welcome_Page.dart';
import 'package:ieee_cs_quizz/screens/screen_1.dart';
import 'package:flutter/material.dart';

main()=>runApp(MyApp());




class MyApp extends StatefulWidget {
  @override
  _MyAppState createState()=>_MyAppState();
}

Color w=Colors.white;
Color b =Colors.black;


class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
      ),
      //home: MyHomePage(),
      routes: {
        '/':(context)=>WelcomePage(),
        FirstScreen.routeName:(context)=>FirstScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: null,

    );




  }
}

