import 'package:flutter/material.dart';

class Gambar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width - 300,
          height: 200,
          padding: EdgeInsets.all(3.0),
          child: Image(
            image: NetworkImage(
                "https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.grey,
          padding: EdgeInsets.all(3.0),
          child: Image.asset(
            "assets/meninggal.jpg",
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}
