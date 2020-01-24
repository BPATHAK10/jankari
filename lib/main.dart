import 'package:flutter/material.dart';
import 'Home.dart';
import 'Screens/biraj.dart';
import 'Screens/SignInOne.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        "/MainScreen": (BuildContext context) => HomeScreen(),
        "/SignInPage": (BuildContext context) => SignInOne()
      }
    );
  }
}