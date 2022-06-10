import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../utils/string_constants_util.dart';
import '../../models/user_model.dart';

class FirebaseClient {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future saveUserData(String userId, UserModel user) => _firestore
      .collection(StringConstants.usersCollection)
      .doc(userId)
      .set(user.toJson());

  Future updateUserSteps(Map<String, dynamic> points) => _firestore
      .collection(StringConstants.usersCollection)
      .doc(FirebaseAuth.instance.currentUser?.uid)
      .update(points);

  Future addHistoryData(Map<String, dynamic> points) =>
      _firestore.collection(StringConstants.historyCollection).add(points);

  Stream<DocumentSnapshot>? getUserData(String userId) => _firestore
      .collection(StringConstants.usersCollection)
      .doc(userId)
      .snapshots();

  Stream<QuerySnapshot>? getUserHistory(String userId) => _firestore
      .collection(StringConstants.historyCollection)
      .where("userId", isEqualTo: userId)
      .snapshots();

  Stream<QuerySnapshot>? getLeadersBoard(String userId) => _firestore
      .collection(StringConstants.usersCollection)
      .orderBy('steps', descending: true)
      .snapshots();
}
