import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

const routeLogin = "/";
const routeHome = "home";

Future<void> navigateToHomePage(BuildContext context, FirebaseUser user) {
  return Navigator.of(context).pushReplacementNamed(routeHome, arguments: user);
}

Future<void> navigateToLoginPage(BuildContext context) {
  return Navigator.of(context).pushReplacementNamed(routeLogin);
}
