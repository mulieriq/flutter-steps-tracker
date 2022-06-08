import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_palette_util.dart';
import 'string_constants_util.dart';

extension StringExtensions on String {
  String operator &(String? other) => '$this $other';
}

extension NavigationExtensions on BuildContext {
  Future<dynamic> appNavigatorPush(dynamic path) => Navigator.of(this)
      .push(CupertinoPageRoute(builder: (BuildContext context) => path));

  Future<dynamic> appNavigatorReplacement(dynamic path) =>
      Navigator.pushReplacement(
          this, CupertinoPageRoute(builder: (BuildContext context) => path));

  Future<dynamic> appNavigatorPushRemoveUntil(dynamic path) =>
      Navigator.pushAndRemoveUntil(
          this,
          CupertinoPageRoute(builder: (context) => path),
          (Route<dynamic> route) => false);

  void back<T extends Object>([T? params]) {
    Navigator.of(this).pop([params]);
  }
}

extension AppNotifications on BuildContext {
  void showCustomSnackBar(String message, BuildContext context,
      {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: 5),
      backgroundColor: isError ? Colors.red : ColorPallete.greenColor,
      content: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      action: SnackBarAction(
        label: StringConstants.okayBtnText,
        textColor: Colors.white,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    ));
  }
}
