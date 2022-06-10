import 'package:flutter/material.dart';

import '../../utils/color_palette_util.dart';
import '../common/app_buttons.dart';

class Modal extends StatefulWidget {
  final Widget? alertIcon;
  final String? title;
  final String? subtitle;
  final String? subtitle2;

  final Function()? onConfirmButtonTap;
  final Function()? onCancel;

  final String? confirmButtonLabel;
  final String? cancelButtonLabel;

  final Color? confirmButtonColor;

  Modal({
    this.title,
    this.subtitle,
    this.subtitle2,
    this.alertIcon,
    this.onConfirmButtonTap,
    this.onCancel,
    this.confirmButtonColor,
    this.cancelButtonLabel,
    this.confirmButtonLabel,
  });

  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  bool canTap = false;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timestamp) {
      if (this.mounted)
        Future.delayed(Duration(milliseconds: 100)).then((value) {
          if (this.mounted) {
            canTap = true;
            setState(() {});
          }
        });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.alertIcon != null) ...[
            Center(
              child: widget.alertIcon,
            ),
          ],
          if (widget.title != null) ...[
            Text(
              "${widget.title}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          SizedBox(height: 10),
          if (widget.subtitle != null) ...[
            Text(
              "${widget.subtitle}",
            ),
          ],
          if (widget.subtitle2 != null) ...[
            Text(
              "${widget.subtitle2}",
              textAlign: TextAlign.center,
            ),
          ],
          if (widget.confirmButtonLabel != null) ...[
            SizedBox(height: 10),
            Container(
                width: size.width,
                height: 50,
                child: CustomButton(
                  btnTextColor: Colors.white,
                  onTap: !canTap ? null : widget.onConfirmButtonTap,
                  btnTxt: widget.confirmButtonLabel,
                  color: widget.confirmButtonColor ??
                      (widget.cancelButtonLabel == null
                          ? ColorPallete.amber
                          : Theme.of(context).colorScheme.secondary),
                )),
          ],
          if (widget.cancelButtonLabel != null) ...[
            SizedBox(height: 10),
            Container(
                width: size.width,
                height: 50,
                child: CustomButton(
                  btnTextColor: Colors.white,
                  onTap: !canTap
                      ? null
                      : () {
                          if (widget.onCancel != null) {
                            widget.onCancel!();
                            return;
                          }
                          Navigator.pop(context);
                        },
                  btnTxt: widget.cancelButtonLabel,
                  color: ColorPallete.amber,
                )),
          ]
        ],
      ),
    );
  }
}
