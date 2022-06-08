import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final Color? color;

  Loader({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(
        strokeWidth: 3,
        valueColor: AlwaysStoppedAnimation<Color>(
          color ?? Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
