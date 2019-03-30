import 'package:flutter/material.dart';
import 'package:warranty_app_example/ui/home/home_page.dart';
import 'package:warranty_app_example/ui/login/login_page.dart';
import 'package:warranty_app_example/ui/navigation.dart';

class WarrantyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: routeLogin,
      routes: {
        routeLogin: (context) => LoginPage(title: 'Warranty App'),
        routeHome: (context) => HomePage()
      },
    );
  }
}
