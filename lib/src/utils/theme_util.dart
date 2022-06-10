import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_palette_util.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorPallete.primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: ColorPallete.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(color: ColorPallete.primaryColor),
    ),
    textTheme: TextTheme(
      bodyText1: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: const Color(0XFF30343F),
      ),
      headline1: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      headline2: GoogleFonts.poppins(
        fontSize: 14,
        color: const Color(0XFF30343F),
        fontWeight: FontWeight.w600,
      ),
      headline3: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: const Color(0XFF30343F),
      ),
      headline4: GoogleFonts.poppins(
        fontSize: 14,
        color: const Color(0XFF30343F),
        fontWeight: FontWeight.w600,
      ),
      headline5: GoogleFonts.poppins(
        fontSize: 14,
      ),
      bodyText2: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: const Color(0XFF30343F),
      ),
    ),
  );
}
