import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tabbar/helper/loading.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  num position = 1;
  String _url = 'https://kawalcovid19.id/';
  final key = UniqueKey();

  void doneLoading(String value) {
    setState(() {
      position = 0;
    });
  }

  void startLoading(String value) {
    setState(() {
      position = 1;
    });
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    var loading = SpinKitLoading().loadingSpinKit(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('$_url'),
        backgroundColor: Color(0xFFDD324A),
        leading: IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: IndexedStack(
        index: position,
        children: <Widget>[
          WebView(
            initialUrl: _url,
            javascriptMode: JavascriptMode.unrestricted,
            key: key,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            navigationDelegate: (NavigationRequest request) {
              if (request.url.startsWith('$_url')) {
                print('blocking navigation to $request}');
                return NavigationDecision.prevent;
              }
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
            },
            onPageStarted: startLoading,
            onPageFinished: doneLoading,
          ),
          Center(
            child: loading,
          )
        ],
      ),
    );
  }
}
