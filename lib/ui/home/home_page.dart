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
        children: mockData.map((warranty) => _WarrantyItem(warranty)).toList(),
      ),
    );
  }
}

class _WarrantyItem extends StatelessWidget {
  Warranty warranty;

  _WarrantyItem(this.warranty);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Card(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              Icon(Icons.folder_open, color: Colors.grey,),
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name: ${warranty.name}", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Company: ${warranty.company}"),
                  Text("Name: ${DateTime.fromMillisecondsSinceEpoch(warranty.date*1000)}"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}