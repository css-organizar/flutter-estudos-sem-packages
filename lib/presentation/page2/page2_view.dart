import 'package:flutter/material.dart';

class Page2View extends StatefulWidget {
  final String title = "Page2View";

  const Page2View({Key? key}) : super(key: key);
  @override
  _Page2ViewState createState() => _Page2ViewState();
}

class _Page2ViewState extends State<Page2View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
