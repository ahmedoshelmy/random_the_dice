import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceApp());
}


class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftbutton=1, rightbutton=3;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Random the Dice'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(onPressed: ((){
                setState(() {
                  leftbutton =  Random().nextInt(6)+1;
                });
                }),
                    child: Image.asset('images/dice$leftbutton.png')),
              ),
              Expanded(
                child: FlatButton(onPressed: ((){
                  setState(() {
                    rightbutton =  Random().nextInt(6)+1;
                  });
                }),
                    child: Image.asset('images/dice$rightbutton.png')),
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}
