import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_estudos_geral/application/application_routes.dart';
import 'package:flutter_estudos_geral/presentation/page1/page1_controller.dart';

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

  Page1Controller controller = Page1Controller();

  @override
  Widget build(BuildContext context) {
    var argumentos = routeArguments(context);
    return Scaffold(
      appBar: AppBar(
        title: argumentos != null ? Text(argumentos['title']) : Text('Page1View()'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Person p = controller.lista.value[controller.selectedPerson.value];
                      p.nome = DateTime.now().toIso8601String();
                      controller.updateItem(controller.selectedPerson.value, p);
                    },
                    child: Text('Alter'),
                  ),
                ),
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: controller.selectedPerson,
                    builder: (context, value, widget) {
                      return ValueListenableBuilder(
                        valueListenable: controller.lista,
                        builder: (context, value, widget) {
                          return ListView.builder(
                            itemCount: controller.lista.value.length,
                            itemBuilder: (context, i) {
                              return InkWell(
                                onTap: () {
                                  controller.setSelectedPerson(i);
                                },
                                child: ListTile(
                                  selectedTileColor: (controller.selectedPerson.value == i)
                                      ? Colors.black.withAlpha(20)
                                      : Colors.transparent,
                                  selected: controller.selectedPerson.value == i,
                                  title: Text(controller.lista.value[i].nome!),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
