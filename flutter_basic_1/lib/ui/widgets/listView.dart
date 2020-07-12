import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List<Widget> data = [];
  int count = 1;
  bool isButtonDisabled = false;

  void incrementCounter() {
    setState(() {
      isButtonDisabled = true;

      data.removeLast();
      count--;
    });
  }

  // _ListviewState() {
  //   for (int i = 0; i < 15; i++) {
  //     data.add(Text('Data ke $i'));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text('Tambah (+)'),
                  onPressed: () {
                    setState(() {
                      data.add(Text('data ke $count'));
                      count++;
                    });
                  }),
              SizedBox(width: 10),
              RaisedButton(
                child: Text(isButtonDisabled ? 'Tunggu' : 'Kurang (-)'),
                onPressed: isButtonDisabled ? null : incrementCounter,
              ),
            ],
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: data,
          ),
        ],
      ),
    );
  }
}
