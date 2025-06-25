import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewKullanimi extends StatefulWidget {
  const WebViewKullanimi({super.key});

  @override
  State<WebViewKullanimi> createState() => _WebViewKullanimiState();
}

class _WebViewKullanimiState extends State<WebViewKullanimi> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.youtube.com/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web View"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
