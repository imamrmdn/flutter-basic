import 'package:flutter/material.dart';
import 'package:tabbar/firstpage.dart';
import 'package:tabbar/helper/mediaQuery.dart';
import 'package:tabbar/secondpage.dart';
import 'package:tabbar/thirdpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class MyUtility {
  BuildContext context;

  MyUtility(this.context) : assert(context != null);

  double get width => MediaQuery.of(context).size.width;
  double get marginHeight => MediaQuery.of(context).size.height / 30;
  double get heightPadding => MediaQuery.of(context).size.height / 50;
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double marginTop = MyUtility(context).marginHeight;
    double paddingTop = MyUtility(context).heightPadding;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFDD324A),
          title: Center(child: Text('Dbloods')),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: "Informasi",
              ),
              Tab(
                text: "Edukasi",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(height: marginTop),
                CardInformation(
                  picture: Image.asset(
                    'assets/sembuh.jpg',
                    fit: BoxFit.cover,
                  ),
                  text: "Donor darah yang baik itu ...",
                  onView: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                ),
                SizedBox(height: paddingTop),
                CardInformation(
                  picture: Image.asset(
                    'assets/sembuh.jpg',
                    fit: BoxFit.cover,
                  ),
                  text: "Data Covid 19 Jakarta Utara",
                  onView: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                ),
                SizedBox(height: paddingTop),
                CardInformation(
                  picture: Image.asset(
                    'assets/sembuh.jpg',
                    fit: BoxFit.cover,
                  ),
                  text: "Data Covid 19 Jakarta Utara",
                  onView: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                ),
                SizedBox(height: paddingTop),
                CardInformation(
                  picture: Image.asset(
                    'assets/sembuh.jpg',
                    fit: BoxFit.cover,
                  ),
                  text: "Data Covid 19 Jakarta Utara",
                  onView: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                ),
              ],
            ),
            Center(
              child: Text('Tab Edukasi'),
            ),
          ],
        ),
      ),
    );
  }
}

class CardInformation extends StatelessWidget {
  final String text;
  final Widget picture;
  final VoidCallback onView;
  const CardInformation({
    Key key,
    this.picture,
    this.text,
    this.onView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Container(
        width: SizeConfig.marginHorizontal,
        height: SizeConfig.sizeHeightItem,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.black38, width: 1),
        ),
        child: Card(
          child: InkWell(
            onTap: () {
              onView();
            },
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 90,
                    height: 70,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: picture),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
