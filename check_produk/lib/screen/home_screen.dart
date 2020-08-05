import 'package:cached_network_image/cached_network_image.dart';
import 'package:check_produk/data/data_source.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> productList = [];

  List<Map<String, dynamic>> get selectedProduct =>
      productList.where((p) => p['checked'] == true).toList();

  //
  int get productTotal {
    var total = 0;
    selectedProduct.forEach((product) {
      total += product['harga'];
    });

    return total;
  }

  @override
  void initState() {
    final dataSource = DataSource();
    productList = List.from(dataSource.produkList);
    setState(() {});
    super.initState();
  }

  //
  void handleOnChange(bool value, int index) {
    setState(() {
      productList[index]['checked'] = value;
    });
    Flushbar(
      backgroundColor: Colors.cyan,
      flushbarPosition: FlushbarPosition.TOP,
      messageText: Text('${format(productTotal)}'),
      duration: Duration(seconds: 2),
    )..show(context);
  }

  String format(int number) {
    var numberformat =
        NumberFormat.currency(locale: 'id_ID', decimalDigits: 0, symbol: 'Rp ')
            .format(number);
    return numberformat;
  }

  @override
  Widget build(BuildContext context) {
    print(productList);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tealColor,
        title: Text('Example CheckBox w/ ListView Builder'),
      ),
      body: SafeArea(
        minimum: minimumMargin,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    var produk = productList[index];

                    return Card(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: produk['checked'],
                              onChanged: (value) =>
                                  handleOnChange(value, index),
                            ),
                            Container(
                              width: 70.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: borderRadius8,
                                border: Border.all(color: tealColor, width: 1),
                                image: DecorationImage(
                                  image: NetworkImage(produk['photo']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  produk['nama_produk'],
                                  style: blackTextFont,
                                ),
                                Text('${format(produk['harga'])}'),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            //
            Container(
              child: Text('${format(productTotal)}'),
            )
          ],
        ),
      ),
    );
  }
}
