import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(MaterialApp(home: PainelCovidRioScreen()));

class PainelCovidRioScreen extends StatefulWidget {
  static const String id = 'painelcovidrio_screen';

  @override
  _PainelCovidRioScreenState createState() => _PainelCovidRioScreenState();
}

class _PainelCovidRioScreenState extends State<PainelCovidRioScreen> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://experience.arcgis.com/experience/38efc69787a346959c931568bd9e2cc4',
        //initialUrl:
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
