import 'package:flutter/material.dart';
import 'package:flutter_estudos_geral/presentation/home/home_view.dart';
import 'package:flutter_estudos_geral/presentation/page1/page1_view.dart';
import 'package:flutter_estudos_geral/presentation/page2/page2_view.dart';

class ApplicationRoutes {
  BuildContext context;

  ApplicationRoutes({
    required this.context,
  });

  static const home = '/';
  static const page1 = '/page1';
  static const page2 = '/page2';

  Map<String, Widget Function(BuildContext)> get getSingleRoutes => {
        home: (context) => const HomeView(),
        page1: (context) => const Page1View(),
        page2: (context) => const Page2View(),
      };

  static Route<dynamic>? generateRoute(RouteSettings routeSettings) {
    try {
      if (routeSettings.name == ApplicationRoutes.home) {
        return MaterialPageRoute(
          builder: (context) {
            return HomeView();
          },
        );
      }

      if (routeSettings.name == ApplicationRoutes.page1) {
        return MaterialPageRoute(
          builder: (context) {
            return Page1View();
          },
          settings: routeSettings,
        );
      }

      if (routeSettings.name == ApplicationRoutes.page2) {
        return MaterialPageRoute(
          builder: (context) {
            return Page2View();
          },
        );
      }
    } catch (e) {
      throw Exception(e.toString());
    }

    assert(false, 'Need to implement ${routeSettings.name}');
    return null;
  }
}
