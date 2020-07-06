import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String name;
  final int roll;
  final String branch;
  final int year;
  final String email;
  final String pwd;
  final int mob;
  final String id;

  User({
    this.name,
    this.roll,
    this.branch,
    this.year,
    this.email,
    this.pwd,
    this.mob,
    this.id,
  });

  factory User.fromDocument(DocumentSnapshot doc) {
    return User(
      name: doc['name'],
      roll: doc['roll'],
      branch: doc['branch'],
      year: doc['year'],
      email: doc['email'],
      pwd: doc['pwd'],
      mob: doc['mob'],
      id: doc.documentID,
    );
  }
}
