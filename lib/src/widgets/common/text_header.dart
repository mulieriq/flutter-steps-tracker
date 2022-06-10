import 'package:flutter/material.dart';

import '../../utils/app_constants_util.dart';

class CommonTextHeader extends StatelessWidget {
  final String? text;

  CommonTextHeader(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: AppConstants.pageHorizontalPadding),
      child: Text(text!,
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16)),
    );
  }
}
