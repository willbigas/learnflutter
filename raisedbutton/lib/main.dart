import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(

            onPressed: () {
              print("RaisedButton");
            },
            color: Colors.blue,
            child: Text("Click button!"),
          ),
          RaisedButton.icon(
              onPressed: () {
                print("Raised Button icon!");
              },
              icon: Icon(Icons.android),
              label: Text("Click Button!"))
        ],
      ),
    );
  }
}
