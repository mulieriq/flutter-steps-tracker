import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../service_locator/locator.dart';
import '../auth_provider.dart';

import 'app_base_provider.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (context) => locator<BaseProvider>()),
  ChangeNotifierProvider(create: (context) => locator<AuthProvider>()),
];
