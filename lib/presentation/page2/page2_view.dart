import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_estudos_geral/application/application_routes.dart';

class Page2View extends StatelessWidget with RouteAware {
  const Page2View({Key? key}) : super(key: key);

  @override
  void didPop() {
    log('Page2View_Method Override -> didPop()');
    super.didPop();
  }

  @override
  void didPopNext() {
    log('Page2View_Method Override -> didPopNext()');
  }

  @override
  void didPush() {
    log('Page2View_Method Override -> didPush()');
    super.didPush();
  }

  @override
  void didPushNext() {
    log('Page2View_Method Override -> didPushNext()');
    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    routeSubscribe(context, this);

    return Scaffold(
      appBar: AppBar(
        title: Text('Page2View()'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
