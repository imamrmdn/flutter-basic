import 'package:flutter/material.dart';

class DraggableKotak extends StatefulWidget {
  @override
  _DraggableKotakState createState() => _DraggableKotakState();
}

class _DraggableKotakState extends State<DraggableKotak> {
  Color colorOne = Colors.amber;
  Color colorTwo = Colors.teal;
  Color colorThree = Colors.cyan;
  Color colorTarget = Colors.blueAccent;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Draggable<Color>(
          data: colorThree,
          child: SizedBox(
            height: 100,
            width: 100,
            child: Material(
              color: colorThree,
              shape: StadiumBorder(),
              elevation: 4,
            ),
          ),
          childWhenDragging: SizedBox(
            height: 100,
            width: 100,
            child: Material(
              color: Colors.grey,
              shape: StadiumBorder(),
            ),
          ),
          feedback: SizedBox(
            height: 100,
            width: 100,
            child: Material(
              color: colorThree.withOpacity(0.5),
              shape: StadiumBorder(),
              elevation: 4,
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Draggable<Color>(
          data: colorOne,
          child: SizedBox(
            height: 100,
            width: 100,
            child: Material(
              color: colorOne,
              shape: StadiumBorder(),
              elevation: 4,
            ),
          ),
          childWhenDragging: SizedBox(
            height: 100,
            width: 100,
            child: Material(
              color: Colors.grey,
              shape: StadiumBorder(),
            ),
          ),
          feedback: SizedBox(
            height: 100,
            width: 100,
            child: Material(
              color: colorOne.withOpacity(0.5),
              shape: StadiumBorder(),
              elevation: 4,
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Draggable<Color>(
          data: colorTwo,
          child: SizedBox(
            height: 100,
            width: 100,
            child: Material(
              color: colorTwo,
              shape: StadiumBorder(),
              elevation: 4,
            ),
          ),
          childWhenDragging: SizedBox(
            height: 100,
            width: 100,
            child: Material(
              color: Colors.grey,
              shape: StadiumBorder(),
            ),
          ),
          feedback: SizedBox(
            height: 100,
            width: 100,
            child: Material(
              color: colorTwo.withOpacity(0.5),
              shape: StadiumBorder(),
              elevation: 4,
            ),
          ),
        ),
        Spacer(
          flex: 2,
        ),
        DragTarget<Color>(
          //mengecek data yg dibawa mau diterima atau tidak
          onWillAccept: (value) => true,
          //fungsi yang akan dilakukan ketika kita menerima data tsb
          onAccept: (value) {
            isAccepted = true;
            colorTarget = value;
          },
          builder: (context, candidates, rejected) {
            return (isAccepted)
                ? SizedBox(
                    height: 100,
                    width: 100,
                    child: Material(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text('drag target')),
                      color: colorTarget,
                      shape: StadiumBorder(),
                      elevation: 4,
                    ),
                  )
                : SizedBox(
                    height: 100,
                    width: 100,
                    child: Material(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text('drag target')),
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  );
          },
        ),
        SizedBox(
          width: 30,
        )
      ],
    );
  }
}
