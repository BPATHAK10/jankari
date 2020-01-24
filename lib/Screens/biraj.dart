import 'package:flutter/material.dart';
import 'SignInOne.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learning app:",
      home: MainScreen()
    );
  }
}

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
          title: Text("My first App"),
      ),
      body: Center(
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("BIRAJ"),
            ),
          ),
      ),
      );
  }
}



