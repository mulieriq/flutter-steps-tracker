import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/utils/string_constants_util.dart';
import 'package:sizer/sizer.dart';

import 'src/utils/theme_util.dart';
import 'src/views/auth/auth_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const Khutaa());
}

class Khutaa extends StatelessWidget {
  const Khutaa({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: StringConstants.appName,
        darkTheme: ThemeData.dark(),
        theme: ThemeManager.lightTheme,
        themeMode: ThemeMode.system,
        home: AuthenitcationScreen(),
      );
    });
  }
}
