import 'package:flutter/material.dart';
import 'package:warranty_app_example/ui/home/home_page.dart';

Future<void> navigateToHomePage(BuildContext context) {
  return Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
}