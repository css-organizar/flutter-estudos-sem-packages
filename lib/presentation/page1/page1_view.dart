import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_estudos_geral/application/application_routes.dart';

class Page1View extends StatefulWidget {
  final String title = "Page1View";

  const Page1View({Key? key}) : super(key: key);
  @override
  _Page1ViewState createState() => _Page1ViewState();
}

class _Page1ViewState extends State<Page1View> with RouteAware {
  @override
  void initState() {
    log('Page1View_Method Override -> initState()');
    super.initState();
  }

  @override
  void dispose() {
    log('Page1View_Method Override -> dispose()');
    routeUnsubcribe(this);
    super.dispose();
  }

  @override
  void activate() {
    log('Page1View_Method Override -> activate()');
    super.activate();
  }

  @override
  void deactivate() {
    log('Page1View_Method Override -> deactivate()');
    super.deactivate();
  }

  @override
  void reassemble() {
    log('Page1View_Method Override -> reassemble()');
    super.reassemble();
  }

  @override
  void didChangeDependencies() {
    log('Page1View_Method Override -> didChangeDependencies()');
    super.didChangeDependencies();
    routeSubscribe(context, this);
  }

  @override
  void didUpdateWidget(Page1View oldWidget) {
    log('Page1View_Method Override -> didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didPop() {
    log('Page1View_Method Override -> didPop()');
    super.didPop();
  }

  @override
  void didPopNext() {
    log('Page1View_Method Override -> didPopNext()');
  }

  @override
  void didPush() {
    log('Page1View_Method Override -> didPush()');
    super.didPush();
  }

  @override
  void didPushNext() {
    log('Page1View_Method Override -> didPushNext()');
    super.didPushNext();
  }

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
