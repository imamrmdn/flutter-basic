import 'package:flutter/material.dart';

//belajar widget container
class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.redAccent[100],
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(20.0),
          bottomRight: const Radius.circular(30.0),
        ),
      ),
      margin: EdgeInsets.all(10),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 35, 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Colors.tealAccent,
              Colors.yellowAccent[100],
              Colors.purple[300],
            ],
          ),
        ),
      ),
    );
  }
}
