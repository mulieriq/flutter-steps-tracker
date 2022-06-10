import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/scheduler.dart';
import '../data/local/shared_preferences.dart';

import '../data/network/database_client.dart';
import '../models/user_model.dart';
import 'config/app_base_provider.dart';

class AuthProvider extends BaseProvider {
  AuthProvider({this.firebaseAuth});
  FirebaseAuth? firebaseAuth;
  late String userName;
  Future<void> handleSignIn(String name, String gender) async {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      setBusy(true);
    });

    try {
      await firebaseAuth?.signInAnonymously().then(((user) async {
        UserModel signedUser = UserModel(
          userName: name,
          gender: gender,
          userId: user.user!.uid,
        );
        saveUserDatails(signedUser);
        FirebaseClient().saveUserData(user.user!.uid, signedUser);

        SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
          setBusy(false);
        });
      }));
    } catch (e) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        setBusy(false);
      });
      log(e.toString());
    }
  }

  getUserName() async {
    this.userName = (await SharedPreferencesManager.getString("userName"))!;
    notifyListeners();
  }

  saveUserDatails(UserModel user) {
    SharedPreferencesManager.saveString("userName", user.userName!);
    SharedPreferencesManager.saveString("userId", user.userId!);
  }
}
