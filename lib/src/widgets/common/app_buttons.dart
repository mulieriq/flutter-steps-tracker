import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String? btnTxt;
  final Color? borderBtnTextColor;
  final Color? borderColor;
  final bool? isShowBorder;
  final Color? color;
  final double? width;
  final Key? key;
  final Color? btnTextColor;

  CustomButton(
      {this.onTap,
      this.color,
      this.width,
      this.btnTextColor,
      this.key,
      this.borderBtnTextColor,
      this.borderColor,
      this.btnTxt,
      this.isShowBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width != null ? width : MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: !isShowBorder!
                    ? Colors.grey.withOpacity(0.2)
                    : Colors.transparent,
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 1))
          ],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: isShowBorder! ? borderColor! : Colors.transparent),
          color: color != null
              ? color
              : !isShowBorder!
                  ? Theme.of(context).colorScheme.secondary
                  : Colors.transparent),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
        ),
        onPressed: onTap,
        child: Text(
          btnTxt!,
          style: Theme.of(context).textTheme.bodyText2?.apply(
                fontWeightDelta: 2,
                color: btnTextColor != null
                    ? btnTextColor
                    : (isShowBorder! ? borderBtnTextColor! : Colors.white),
              ),
        ),
      ),
    );
  }
}
