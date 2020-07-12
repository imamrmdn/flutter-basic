import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:equatable/equatable.dart';

//belajar widget timer
class SetTimer extends StatefulWidget {
  @override
  _SetTimerState createState() => _SetTimerState();
}

class _SetTimerState extends State<SetTimer> {
  int counter = 30;
  bool isStop = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$counter',
            style: TextStyle(fontSize: 30),
          ),
          RaisedButton(
            onPressed: () {
              counter = 30;
              isStop = false;
              Timer.periodic(Duration(seconds: 1), (timer) {
                if (isStop) timer.cancel();
                setState(() {
                  counter--;
                });
              });
            },
            child: Text('start'),
          ),
          RaisedButton(
            onPressed: () {
              isStop = true;
            },
            child: Text('Stop'),
          )
        ],
      ),
    );
  }
}
