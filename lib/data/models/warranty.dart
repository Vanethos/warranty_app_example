import 'package:cloud_firestore/cloud_firestore.dart';

class Warranty {
  Warranty(this.name, this.company, this.date);

  String name;
  String company;
  int date;

  factory Warranty.fromFirestore(DocumentSnapshot document) {
    return Warranty(
      document['name'],
      document['company'],
      document['date']
    );
  }
}
