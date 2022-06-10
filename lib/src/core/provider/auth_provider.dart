import 'package:firebase_auth/firebase_auth.dart';

import 'config/app_base_provider.dart';

class AuthProvider extends BaseProvider {
  FirebaseAuth? firebaseAuth;
  AuthProvider({this.firebaseAuth});
}
