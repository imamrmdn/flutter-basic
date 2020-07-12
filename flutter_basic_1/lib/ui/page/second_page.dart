//belajar membuat appbar dengan gradasi dan corak/pattern
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isOn = false;

  changeValue(newValue) {
    isOn = newValue;
    setState(() {
      if (isOn) {
        containerAnimation = containerAnimation2;
      } else {
        containerAnimation = Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.teal,
          ),
        );
      }
    });
  }

  transisi(child, animation) {
    var kondisi = ScaleTransition(
      scale: animation,
      child: child,
    );
    return kondisi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text("Appbar Example Gradasi"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.teal],
              begin: FractionalOffset.bottomLeft,
              end: FractionalOffset.topRight,
            ),
            image: DecorationImage(
              image: NetworkImage(
                  'https://www.pngarts.com/files/2/Pattern-PNG-Transparent-Image.png'),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
              //fit: BoxFit.fill,
            ),
          ),
        ),
        elevation: 10,
      ),
      body: SafeArea(
        child: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? ListView(children: <Widget>[
                Column(
                  children: generatedContainers(),
                ),
              ])
            : ListView(children: <Widget>[
                Row(
                  children: generatedContainers(),
                ),
              ]),
      ),
    );
  }

  List<Widget> generatedContainers() {
    return <Widget>[
      Text('latihan media query'),
      Container(height: 200, width: 200, color: Colors.teal),
      Container(height: 200, width: 200, color: Colors.blue),
      Container(height: 200, width: 200, color: Colors.teal),
      Switch(
        value: isOn,
        onChanged: changeValue,
        inactiveThumbColor: Colors.teal,
        inactiveTrackColor: Colors.teal[200],
        activeColor: Colors.amber,
      ),
      AnimatedSwitcher(
        duration: Duration(seconds: 1),
        child: containerAnimation,
        transitionBuilder: (child, animation) {
          return RotationTransition(
            turns: animation,
            child: child,
          );
        },
      )
    ];
  }

  Widget containerAnimation = Container(
    key: ValueKey(1),
    height: 200,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.teal,
    ),
  );
  Widget containerAnimation2 = Container(
    key: ValueKey(2),
    height: 400,
    width: 400,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.amber,
    ),
  );
}
