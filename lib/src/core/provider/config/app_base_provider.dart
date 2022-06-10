import 'package:flutter/foundation.dart';

class BaseProvider with ChangeNotifier {
  bool _busy = false;

  bool get busy => _busy;

  setBusy(bool val) {
    _busy = val;
    notifyListeners();
  }
}
