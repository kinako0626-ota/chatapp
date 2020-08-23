import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  User(DocumentSnapshot doc) {
    documentID = doc.documentID;
    userName = doc['userName'];
    email = doc['email'];
    password = doc['password'];
  }

  String documentID;
  String userName;
  String email;
  String password;
}
