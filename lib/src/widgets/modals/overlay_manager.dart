import 'package:flutter/material.dart';

class OverlayManager {
  static final modalShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5),
    ),
  );

  static Future show({@required BuildContext? context, Widget? child}) async {
    return await showModalBottomSheet(
      context: context!,
      shape: OverlayManager.modalShape,
      builder: (context) {
        return child!;
      },
    );
  }
}
