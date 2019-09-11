import 'package:cicleavatar/CustomCircleAvatar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: HomeWidget()),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text("A"),
        ),
        SizedBox(
          height: 50,
        ),
        CustomCircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            "J",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
