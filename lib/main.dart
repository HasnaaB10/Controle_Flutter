import 'package:flutter/material.dart';
import 'package:controle_functions/screens/home.dart';
import 'package:controle_functions/screens/page1.dart';
import 'package:controle_functions/screens/page2.dart';
import 'package:controle_functions/screens/page3.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context)=>MyHome(),
        "page1":(context)=>Page1(),
        "page2":(context)=>Page2(),
        "page3":(context)=>Page3(),
      },
    );
  }
}