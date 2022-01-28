import 'package:flutter/material.dart';

class Page1View extends StatefulWidget {
  final String title = "Page1View";

  const Page1View({Key? key}) : super(key: key);
  @override
  _Page1ViewState createState() => _Page1ViewState();
}

class _Page1ViewState extends State<Page1View> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? argumentos = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos['param1']),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
