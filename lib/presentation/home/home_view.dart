import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_estudos_geral/application/application_routes.dart';

class HomeView extends StatefulWidget {
  final String title = 'HomeView';
  const HomeView({Key? key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with RouteAware {
  @override
  void initState() {
    log('HomeView_Method Override -> initState()');
    super.initState();
  }

  @override
  void dispose() {
    log('HomeView_Method Override -> dispose()');
    routeUnsubcribe(this);
    super.dispose();
  }

  @override
  void activate() {
    log('HomeView_Method Override -> activate()');
    super.activate();
  }

  @override
  void deactivate() {
    log('HomeView_Method Override -> deactivate()');
    super.deactivate();
  }

  @override
  void reassemble() {
    log('HomeView_Method Override -> reassemble()');
    super.reassemble();
  }

  @override
  void didChangeDependencies() {
    log('HomeView_Method Override -> didChangeDependencies()');
    super.didChangeDependencies();
    routeSubscribe(context, this);
  }

  @override
  void didUpdateWidget(HomeView oldWidget) {
    log('HomeView_Method Override -> didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didPop() {
    log('HomeView_Method Override -> didPop()');
    super.didPop();
  }

  @override
  void didPopNext() {
    log('HomeView_Method Override -> didPopNext()');
  }

  @override
  void didPush() {
    log('HomeView_Method Override -> didPush()');
    super.didPush();
  }

  @override
  void didPushNext() {
    log('HomeView_Method Override -> didPushNext()');
    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      'NaoExiste',
                    );
                  },
                  child: Text('Erro'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RoutePaths.page1,
                    );
                  },
                  child: Text('Page 1'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RoutePaths.page2,
                      arguments: {
                        'param1': 'pagina 2 valor 1',
                        'param2': 'pagina 2 valor 2',
                      },
                    );
                  },
                  child: Text('Page 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
