import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/core/service_locator/locator.dart';
import 'src/utils/app_urls.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'src/utils/string_constants_util.dart';
import 'package:sizer/sizer.dart';

import 'src/utils/theme_util.dart';
import 'src/views/auth/auth_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await Firebase.initializeApp();
  await dotenv.load(fileName: AppUrls.envFile);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runZonedGuarded(() async {
    await SentryFlutter.init((options) {
      options.dsn = dotenv.env["SENTRY_DSN"];
      options.debug = false;
    }, appRunner: () => initializeApplication());
  }, (exception, stackTrace) async {
    await Sentry.captureException(exception, stackTrace: stackTrace);
  });
}

void initializeApplication() {
  runApp(DefaultAssetBundle(
    bundle: SentryAssetBundle(),
    child: MultiProvider(
      providers: [],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          navigatorObservers: [
            SentryNavigatorObserver(),
          ],
          title: StringConstants.appName,
          darkTheme: ThemeData.dark(),
          theme: ThemeManager.lightTheme,
          themeMode: ThemeMode.system,
          home: AuthenitcationScreen(),
        );
      }),
    ),
  ));
}
