import 'package:flutter/material.dart';
import 'package:warranty_app_example/data/models/warranty.dart';

var mockData = generateWarranties();

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
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAddDialog(context),
        child: Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
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
              Icon(
                Icons.folder_open,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name: ${warranty.name}",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Company: ${warranty.company}"),
                  Text(
                      "Name: ${DateTime.fromMillisecondsSinceEpoch(warranty.date)}"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Warranty> generateWarranties() {
  var warranties = <Warranty>[];
  for (var i = 1; i < 100; i++) {
    warranties.add(Warranty("Warranty $i", "Company $i",
        (DateTime.now().millisecondsSinceEpoch - i * 1000 * 1000)));
  }
  return warranties;
}

void showAddDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text("title"),
            content: Text("A dialog"),
            actions: <Widget>[
              FlatButton(
                child: const Text("CLOSE"),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
              FlatButton(
                child: const Text("ADD"),
                onPressed: () {
                  Navigator.pop(context, false);
                },
              ),
            ],
          ));
}
