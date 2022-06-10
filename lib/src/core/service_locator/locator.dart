import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import '../provider/auth_provider.dart';
import '../provider/config/app_base_provider.dart';
import '../respository/auth_repository.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // External

  locator.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  // Repository

  locator.registerFactory<AuthRepository>(() => AuthRepository());

  // Provider

  locator.registerFactory<BaseProvider>(() => BaseProvider());

  locator.registerFactory<AuthProvider>(
      () => AuthProvider(firebaseAuth: locator()));

  log('[Locator]  (_Registered Locators_)');
}
