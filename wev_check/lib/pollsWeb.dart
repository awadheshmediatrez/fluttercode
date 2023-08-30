import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyWebView extends StatefulWidget {
  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  InAppWebViewController? webView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WebView Example"),
      ),
      body: InAppWebView(
        initialUrlRequest:
            URLRequest(url: Uri.parse("https://jgdsglobaltrading.com/")),
        initialOptions: InAppWebViewGroupOptions(
          android: AndroidInAppWebViewOptions(
            allowFileAccess: true, // Enable file access
          ),
        ),
        onCreateWindow: (controller, createWindowRequest) {
          return Future.value(true);
        },
        onWebViewCreated: (controller) {
          webView = controller;
        },
      ),
    );
  }
}
