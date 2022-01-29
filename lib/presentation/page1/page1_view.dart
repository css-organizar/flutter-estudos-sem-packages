import 'package:flutter/material.dart';
import 'package:flutter_estudos_geral/application/application_routes.dart';

class Page1View extends StatefulWidget {
  final String title = "Page1View";

  const Page1View({Key? key}) : super(key: key);
  @override
  _Page1ViewState createState() => _Page1ViewState();
}

class _Page1ViewState extends State<Page1View> {
  @override
  Widget build(BuildContext context) {
    var argumentos = routeArguments(context);

    return Scaffold(
      appBar: AppBar(
        title: argumentos != null ? Text(argumentos['title']) : Text('Page1View()'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
