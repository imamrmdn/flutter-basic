import 'package:flutter/material.dart';

class InkWellCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            color: Colors.cyan,
            onPressed: () {},
            child: Text('Raised Button'),
            shape: StadiumBorder(),
          ),
          Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 3,
            child: Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
              ),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {},
                  child: Center(
                    child: Text('Button Custom'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
