import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/clients/clients.dart';
import 'package:flutter_web_dashboard/pages/drivers/drivers.dart';
import 'package:flutter_web_dashboard/pages/overview/overview.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRouter:
      return _getPageRoute(const OverViewPage());
    case driversPageRouter:
      return _getPageRoute(const DriversPage());
    case clientsPageRouter:
      return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}