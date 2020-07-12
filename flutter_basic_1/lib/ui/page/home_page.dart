import 'package:flutix_course/ui/widgets/anonymous.dart';
import 'package:flutix_course/ui/widgets/appbarGradasi.dart';
import 'package:flutix_course/ui/widgets/container.dart';
import 'package:flutix_course/ui/widgets/draggable.dart';
import 'package:flutix_course/ui/widgets/image.dart';
import 'package:flutix_course/ui/widgets/inkWell.dart';
import 'package:flutix_course/ui/widgets/listView.dart';
import 'package:flutix_course/ui/widgets/row_column.dart';
import 'package:flutix_course/ui/widgets/spacer.dart';
import 'package:flutix_course/ui/widgets/stack_align.dart';
import 'package:flutix_course/ui/widgets/state.dart';
import 'package:flutix_course/ui/widgets/animatedContainer.dart';
import 'package:flutix_course/ui/widgets/text.dart';
import 'package:flutix_course/ui/widgets/textfield.dart';
import 'package:flutix_course/ui/widgets/timer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Dasar Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('1.'), //belajar widget text
            TextWidget(),
            Text('2.'), //belajar widget row and column
            RowColumn(),
            SizedBox(height: 10),
            Text('3.'), //belajar wdiget Container
            ContainerWidget(),
            Text('4.'), //belajar widget stateful
            Statelesful(),
            SizedBox(height: 10),
            Text('5.'), //belajar anonymous method
            Anonymous(),
            SizedBox(height: 10),
            Text('6.'),
            Listview(), //belajar list view
            Text('7.'),
            AnimasiContainer(), //animated container
            Text('8.'),
            Stackalign(), //stack dan alignment
            SizedBox(height: 20),
            Text('9.'),
            Gambar(), //image widget
            SizedBox(height: 20),
            Text('10. spacer widget'),
            SizedBox(height: 20),
            SpacerWidget(), //spacer widget
            SizedBox(height: 20),
            Text('11.'),
            DraggableKotak(), //draggable
            SizedBox(height: 20),
            Text('12.'),
            AppbarGradasi(), //appbar gradasi
            Text('13.'),
            SizedBox(height: 20),
            BelajarTextField(),
            SizedBox(height: 40),
            Text('14.'),
            InkWellCustom(),
            SizedBox(height: 40),
            Text('15.'),
            SetTimer(),
            SizedBox(height: 40),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
        ],
      ),
    );
  }
}
