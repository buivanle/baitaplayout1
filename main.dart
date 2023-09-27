import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStackWidget(),
    );
  }
}

class MyStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Stacked Squares"),
          ),
          body: Stack(
            children: <Widget>[
              Container(
                  width: 1000,
                  height: 1200,
                  //color: Colors.green,
                  margin: EdgeInsets.all(20)),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 300,
                  height: 600,
                  color: Colors.orange,
                  child: Center(
                      child: Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  )),
                ),
              ),
              Container(
                  width: 658,
                  height: 300,
                  color: Colors.red,
                  child: Center(
                      child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ))),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 658,
                  height: 300,
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  )),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 300,
                  height: 600,
                  color: Colors.green,
                  child: Center(
                      child: Text(
                    '4',
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  )),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 358,
                  height: 300,
                  color: Colors.purple,
                  child: Center(
                      child: Text(
                    '5',
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  )),
                ),
              ),
            ],
          )),
    );
  }
}
