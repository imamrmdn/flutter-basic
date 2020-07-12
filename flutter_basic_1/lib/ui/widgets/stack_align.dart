import 'package:flutter/material.dart';

class Stackalign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text('ini container pertama'),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(50),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text('ini container kedua'),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    width: 240,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text('ini container ketiga'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    width: 240,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text('ini container ketiga'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 170),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(50),
                    bottomRight: const Radius.circular(50),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text('ini container keempat'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
