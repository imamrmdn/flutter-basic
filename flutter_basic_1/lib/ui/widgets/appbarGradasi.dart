import 'package:flutix_course/ui/page/second_page.dart';
import 'package:flutter/material.dart';

class AppbarGradasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Go to Second Page'),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondPage()));
        },
      ),
    );
  }
}
