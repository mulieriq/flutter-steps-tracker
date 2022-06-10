import 'package:flutter/material.dart';
import '../views/auth/auth_screen.dart';
import '../views/home/home_page.dart';
import 'package:provider/provider.dart';

import '../core/provider/auth_provider.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late AuthProvider provider;

  @override
  void didChangeDependencies() {
    provider = Provider.of<AuthProvider>(context, listen: true);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return provider.firebaseAuth!.currentUser == null
        ? AuthenitcationScreen()
        : HomePage();
  }
}
