import 'package:flutter/material.dart';

//belajar statefulwdiget
class Statelesful extends StatefulWidget {
  @override
  _StatelesfulState createState() => _StatelesfulState();
}

class _StatelesfulState extends State<Statelesful> {
  int angka = 20;

  void kurangAngka() {
    setState(() {
      angka = angka - 10;
    });
  }

  void kaliAngka() {
    setState(() {
      angka = angka * -2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            angka.toString(),
            style: TextStyle(fontSize: 20),
          ),
          RaisedButton(
            child: Text('Dikurang (-10)'),
            onPressed: kurangAngka,
          ),
          RaisedButton(
            child: Text('Dikali (-2)'),
            onPressed: kaliAngka,
          ),
        ],
      ),
    );
  }
}
