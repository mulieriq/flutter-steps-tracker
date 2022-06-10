import 'dart:async';

import 'package:flutter/material.dart';
import 'package:khutaa/src/utils/permission_manager.dart';
import 'package:sizer/sizer.dart';

import '../../utils/app_constants_util.dart';
import '../../utils/app_extenstions_util.dart';
import '../../utils/app_urls.dart';
import '../../utils/color_palette_util.dart';
import '../../utils/curve.dart';
import '../../utils/string_constants_util.dart';
import '../../widgets/common/app_buttons.dart';
import '../../widgets/common/text_header.dart';
import '../../widgets/forms/c_app_drop_down_field.dart';
import '../../widgets/forms/c_text_form_field.dart';
import '../home/home_page.dart';

class AuthenitcationScreen extends StatefulWidget {
  const AuthenitcationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenitcationScreen> createState() => _AuthenitcationScreenState();
}

class _AuthenitcationScreenState extends State<AuthenitcationScreen> {
  String? _gender;
  final TextEditingController _nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Future<void>? initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await _route();
    });
    return null;
  }

  Future<void>? _route() {
    Timer(Duration(seconds: 1), () async {
      PermissionManager.getMotionPermission();
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        CustomPaint(size: Size(50.h, 250.w), painter: CurvePainter()),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstants.pageHorizontalPadding),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    AppUrls.appLogo,
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
                Center(
                  child: Text(StringConstants.welcomeText,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 30)),
                ),
                CommonTextHeader(StringConstants.name),
                CTextFormField(
                  validator: (String? value) {
                    return value!.isEmpty ? StringConstants.addName : null;
                  },
                  controller: _nameController,
                  hintText: StringConstants.nameHintText,
                  centerText: false,
                  keyboardType: TextInputType.text,
                ),
                CommonTextHeader(StringConstants.genderTextHint),
                AppDropdownInput(
                  hintText: StringConstants.genderTextHint,
                  options: [StringConstants.male, StringConstants.female],
                  value: _gender,
                  onChanged: (String? value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                  getLabel: (String? value) => value!,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomButton(
                        borderBtnTextColor:
                            Theme.of(context).colorScheme.secondary,
                        borderColor: ColorPallete.greyColor,
                        btnTxt: StringConstants.saveBtnText,
                        onTap: () => context.appNavigatorPush(HomePage())))
              ],
            ),
          ),
        )
      ],
    )));
  }
}
