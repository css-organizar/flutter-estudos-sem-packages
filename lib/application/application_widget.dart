import 'package:flutter/material.dart';
import 'package:flutter_estudos_geral/application/application_routes.dart';

class ApplicationWidget extends StatefulWidget {
  const ApplicationWidget({Key? key}) : super(key: key);

  @override
  _ApplicationWidgetState createState() => _ApplicationWidgetState();
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Flutter',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteGenerator.initialRoute,
      navigatorObservers: [],
    );
  }
}
