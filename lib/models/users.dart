import 'package:cloud_firestore/cloud_firestore.dart';

//Demo USERModel TODO need to be changed only for demo purpose
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
      name: doc.data()['name'],
      roll: doc.data()['roll'],
      branch: doc.data()['branch'],
      year: doc.data()['year'],
      email: doc.data()['email'],
      pwd: doc.data()['pwd'],
      mob: doc.data()['mob'],
      id: doc.id,
    );
  }
}
