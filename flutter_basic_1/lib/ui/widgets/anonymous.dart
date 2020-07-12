import 'package:flutter/material.dart';

//belajar anonymous method
class Anonymous extends StatefulWidget {
  @override
  _AnonymousState createState() => _AnonymousState();
}

class _AnonymousState extends State<Anonymous> {
  String pesan = "Kalimat";

  void ubahKalimat() {
    setState(() {
      pesan = "Kalimat ini sudah di tekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(pesan),
          RaisedButton(
            child: Text('Tekan Disini'),
            onPressed: ubahKalimat,
          ),
          RaisedButton(
            color: Colors.blueAccent[100],
            child: Text('Tekan Disini'),
            onPressed: () {
              setState(() {
                pesan = "Kalimat ini menggunakan anonymous method";
              });
            },
          ),
        ],
      ),
    );
  }
}
