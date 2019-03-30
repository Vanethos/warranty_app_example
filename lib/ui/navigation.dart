import 'package:flutter/material.dart';

const routeLogin = "/";
const routeHome = "home";

Future<void> navigateToHomePage(BuildContext context) {
  return Navigator.of(context).pushReplacementNamed(routeHome);
}

Future<void> navigateToLoginPage(BuildContext context) {
  return Navigator.of(context).pushReplacementNamed(routeLogin);
}
