import 'package:flutter/material.dart';
import 'package:warranty_app_example/data/models/warranty.dart';

var mockData = <Warranty>[
  Warranty("Warranty 1", "Company 1", 1553808560),
  Warranty("Warranty 2", "Company 1", 1502539200),
  Warranty("Warranty 3", "Company 3", 1502529200)
];

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Warranties"),
      ),
      body: ListView(
        children: mockData.map((warranty) => Text(warranty.name)).toList(),
      ),
    );
  }
}