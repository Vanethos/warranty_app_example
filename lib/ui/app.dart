import 'package:flutter/material.dart';
import 'package:warranty_app_example/ui/login/login_page.dart';

class WarrantyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(title: 'Warranty App'),
    );
  }
}
