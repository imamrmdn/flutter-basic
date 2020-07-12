import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Spacer(flex: 1),
          Container(
            height: 80,
            width: 80,
            color: Colors.blueAccent,
          ),
          Spacer(flex: 3),
          Container(
            height: 80,
            width: 80,
            color: Colors.teal,
          ),
          Spacer(flex: 1),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber,
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
