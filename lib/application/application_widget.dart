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
      debugShowCheckedModeBanner: false,
      onGenerateRoute: ApplicationRoutes.generateRoute,
      initialRoute: ApplicationRoutes.home,
    );
  }
}
