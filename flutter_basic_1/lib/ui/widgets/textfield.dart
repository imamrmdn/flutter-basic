import 'package:flutter/material.dart';

class BelajarTextField extends StatefulWidget {
  @override
  _BelajarTextFieldState createState() => _BelajarTextFieldState();
}

class _BelajarTextFieldState extends State<BelajarTextField> {
  TextEditingController controllerText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text("Pesanmu akan tampil disini: " + controllerText.text),
            ),
            SizedBox(height: 10),
            Theme(
              data: ThemeData(
                primaryColor: Colors.red,
              ),
              child: TextFormField(
                controller: controllerText,
                onChanged: (value) {
                  setState(() {});
                },
                keyboardType: TextInputType.emailAddress,
                //textDirection: TextDirection.rtl,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                    labelText: "Nama Kamu",
                    hoverColor: Colors.red,
                    //hintText: 'Tulis Pesan mu disini',
                    labelStyle: TextStyle(fontSize: 20)
                    //labelText: "Tulis Pesan mu disini",

                    ),
                maxLength: 20,
                //obscureText: true, //untuk password
              ),
            ),
          ],
        ));
  }
}
