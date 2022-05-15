//produce studyguide
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//void main() => runApp(StudyGuide1Screen());
class StudyGuide1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: WebViewLoad()));
  }
}

class WebViewLoad extends StatefulWidget {
  WebViewLoadUI createState() => WebViewLoadUI();
}

class WebViewLoadUI extends State<WebViewLoad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Produce Code Guide')),
        body: WebView(
          initialUrl:
              'https://quizlet.com/6091235/walmart-produce-other-codes-flash-cards/',
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
