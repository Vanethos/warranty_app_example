import 'package:flutter/material.dart';
import 'package:warranty_app_example/ui/home/home_page.dart';

const routeLogin = "/";
const routeHome = "home";

Future<void> navigateToHomePage(BuildContext context) {
  return Navigator.of(context)
      .pushReplacementNamed(routeHome);
}