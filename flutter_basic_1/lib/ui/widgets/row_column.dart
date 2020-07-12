import 'package:flutter/material.dart';

//belajar widget row dan column
class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Kalimat Pertama'),
          Text('Kalimat Kedua'),
          Text('Kalimat Ketiga'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Kalimat Keempat'),
              Text('Kalimat Kelima'),
              Text('Kalimat Keenam')
            ],
          )
        ],
      ),
    );
  }
}
