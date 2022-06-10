import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? userName;
  String? gender;
  String? userId;

  UserModel({this.userName, this.userId, this.gender});

  UserModel.fromFireStore(DocumentSnapshot docs) {
    userName = docs['userName'];
    gender = docs['gender'];
    userId = docs['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['gender'] = this.gender;
    data['userId'] = this.userId;
    return data;
  }
}
