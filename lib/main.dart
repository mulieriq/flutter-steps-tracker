import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/utils/theme_util.dart';
import 'src/views/home/home_page.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      theme: ThemeManager.lightTheme,
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
