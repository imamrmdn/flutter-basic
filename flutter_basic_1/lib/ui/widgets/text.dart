import 'package:flutter/material.dart';

//belajar widget text
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      margin: EdgeInsets.only(top: 10),
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: Colors.yellowAccent[100],
      child: Column(
        children: <Widget>[
          Text(
            'Hello People Saya sedang melatih kemampuan saya karena saya ingin menjadi front end developer flutter',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Belajar Text Style',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.cyan,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.redAccent,
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
