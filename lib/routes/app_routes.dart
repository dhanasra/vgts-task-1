import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vgts_task_1/screens/dashboard_view.dart';

class Routes {
  Routes._();

  static const String home = "/";
}

class RouteGenerator {

  final RouteSettings settings;

  RouteGenerator({required this.settings});

  Route<dynamic> getRoute() {
    switch (settings.name) {
      case Routes.home:
        return getTransistionPage(const DashboardView());
      default:
        return unDefinedRoute();
    }
  }

  getTransistionPage(Widget child) {
    return PageTransition(
      child: child,
      settings: settings,
      type: PageTransitionType.fade,
    );
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('Not Found'),
        ),
      ),
    );
  }
}