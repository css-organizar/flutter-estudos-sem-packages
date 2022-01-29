import 'package:flutter/material.dart';
import 'package:flutter_estudos_geral/presentation/home/home_view.dart';
import 'package:flutter_estudos_geral/presentation/page1/page1_view.dart';
import 'package:flutter_estudos_geral/presentation/page2/page2_view.dart';
import 'package:page_transition/page_transition.dart';

abstract class RoutePaths {
  static const home = '/';
  static const page1 = '/page1';
  static const page2 = '/page2';
}

class RoutePage {
  final String name;
  final Widget page;
  final PageTransitionType? transition;

  RoutePage({
    required this.name,
    required this.page,
    this.transition,
  });
}

abstract class RouteGenerator {
  static final RouteObserver<PageRoute> _pageRouteObserver = RouteObserver<PageRoute>();
  static final RouteObserver<ModalRoute<void>> _modalRouteObserver = RouteObserver<ModalRoute<void>>();

  static String get initialRoute => RoutePaths.home;
  static PageTransitionType get defaultTransition => PageTransitionType.fade;
  static RouteObserver<PageRoute> get pageRouteObserver => _pageRouteObserver;
  static RouteObserver<ModalRoute<void>> get modalRouteObserver => _modalRouteObserver;

  static List<RoutePage> get _applicationPages => [
        RoutePage(
          name: RoutePaths.home,
          page: HomeView(),
          transition: PageTransitionType.fade,
        ),
        RoutePage(
          name: RoutePaths.page1,
          page: Page1View(),
          transition: PageTransitionType.fade,
        ),
        RoutePage(
          name: RoutePaths.page2,
          page: Page2View(),
        ),
      ];

  static Route<dynamic>? generateRoute(RouteSettings routeSettings) {
    try {
      var firstPageListItem = _applicationPages.where(
        (element) {
          return element.name == routeSettings.name;
        },
      ).first;

      if (routeSettings.name == firstPageListItem.name) {
        return PageTransition(
          child: firstPageListItem.page,
          type: firstPageListItem.transition ?? defaultTransition,
          settings: routeSettings,
          alignment: Alignment.center,
          childCurrent: firstPageListItem.page,
        );
      }
    } catch (e) {
      return PageTransition(
        child: DefaultErrorPage(message: e.toString()),
        type: defaultTransition,
      );
    }

    return PageTransition(
      child: DefaultErrorPage(),
      type: defaultTransition,
    );
  }
}

dynamic routeArguments(BuildContext context) {
  var arguments = ModalRoute.of(context)?.settings.arguments;
  return arguments;
}

routeSubscribe(BuildContext context, RouteAware routeAware) {
  RouteGenerator.pageRouteObserver.subscribe(
    routeAware,
    ModalRoute.of(context) as PageRoute,
  );
}

routeUnsubcribe(RouteAware routeAware) {
  RouteGenerator.pageRouteObserver.unsubscribe(routeAware);
}

class DefaultErrorPage extends StatelessWidget {
  final String message;

  const DefaultErrorPage({
    Key? key,
    this.message = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.error_outline_rounded,
                  size: 250,
                  color: Colors.red[900],
                ),
              ),
              Text(message != '' ? message : 'Rota Inválida'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Retornar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
