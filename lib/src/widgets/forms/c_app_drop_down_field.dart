import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../utils/color_palette_util.dart';
import '../../utils/string_constants_util.dart';

class AppDropdownInput<T> extends StatelessWidget {
  final String? hintText;
  final List<T?>? options;
  final T? value;
  final String Function(T?)? getLabel;
  final void Function(T?)? onChanged;

  AppDropdownInput({
    this.hintText = StringConstants.appDropDownHintText,
    this.options = const [],
    this.getLabel,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      builder: (FormFieldState<T> state) {
        return InputDecorator(
          decoration: InputDecoration(
            labelText: hintText,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: ColorPallete.greyColor,
              ),
            ),
          ),
          isEmpty: value == null || value == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              icon: Icon(FontAwesomeIcons.angleDown),
              value: value,
              isDense: true,
              onChanged: onChanged,
              items: options!.map((T? value) {
                return DropdownMenuItem<T>(
                  value: value,
                  child: Container(
                    width: 70.w,
                    child: Text(getLabel!(value),
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 16)),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
