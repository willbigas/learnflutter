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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Conta de Usuario",
          ),
        ),
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
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            child: ClipOval(
              child: Image.network(
                "https://avatars0.githubusercontent.com/u/40570053?s=460&v=4",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "William Bigas Mauro",
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "williambmauro@hotmail.com",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              print("Clicou aqui!");
            },
            child: Material(
              elevation: 7,
              borderRadius: BorderRadius.circular(40),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40)),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                child: Text(
                  "SAIR",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
