import 'package:flutter/material.dart';
import 'package:flutter_estudos_geral/application/application_routes.dart';

class HomeView extends StatefulWidget {
  final String title = 'HomeView';
  const HomeView({Key? key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
