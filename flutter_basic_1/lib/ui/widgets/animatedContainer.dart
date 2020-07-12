import 'dart:math';
import 'package:flutter/material.dart';

class AnimasiContainer extends StatefulWidget {
  @override
  _AnimasiContainerState createState() => _AnimasiContainerState();
}

class _AnimasiContainerState extends State<AnimasiContainer> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(
              255,
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
            ),
          ),
          duration: Duration(seconds: 1),
          width: 150 + random.nextInt(151).toDouble(),
          height: 100 + random.nextInt(151).toDouble(),
        ),
      ),
    );
  }
}
