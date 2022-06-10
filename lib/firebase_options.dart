// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQpUoTdFUb0aFqg_K6O-conPTMtTMJhaE',
    appId: '1:977564392897:android:2c00693908b78c22dfa340',
    messagingSenderId: '977564392897',
    projectId: 'flutter-steps-tracke',
    storageBucket: 'flutter-steps-tracke.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDH0bS0dDdfTu1k-qdjtYAKuu8aonex6A8',
    appId: '1:977564392897:ios:507663dffe38110bdfa340',
    messagingSenderId: '977564392897',
    projectId: 'flutter-steps-tracke',
    storageBucket: 'flutter-steps-tracke.appspot.com',
    iosClientId: '977564392897-us7ejmsvu3p1ragciriuv2028t7t9ne8.apps.googleusercontent.com',
    iosBundleId: 'com.nyartech.interview.khutaa',
  );
}
