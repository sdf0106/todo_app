import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'palette.dart';

class TextStyles {
  TextStyles._();

  static TextStyle get buttonFont => GoogleFonts.rubik(
        color: Palette.alabaster,
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      );

  static TextStyle get splashText => GoogleFonts.rubik(
        color: Palette.butterflyBush,
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      );

  static TextStyle get taskFont => GoogleFonts.rubik(
        color: Palette.butterflyBush,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      );

  static TextStyle get timingFont => GoogleFonts.rubik(
        color: Palette.frenchGrey,
        fontSize: 11.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      );

  static TextStyle get bottomBarFont => GoogleFonts.rubik(
        color: Palette.conrflower,
        fontSize: 10.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      );

  static TextStyle get dateFont => GoogleFonts.rubik(
        color: Palette.tundora,
        fontSize: 13.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      );

  static TextStyle get taskMakerFont => GoogleFonts.rubik(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      );

  static TextStyle get typeFont => GoogleFonts.rubik(
        color: Colors.grey,
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      );

  static TextStyle get newTaskFont => GoogleFonts.rubik(
        color: Palette.mineShaft,
        fontSize: 20.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      );

  static TextStyle get numberOfTasksFont => GoogleFonts.rubik(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      );

  static TextStyle get taskScreen => GoogleFonts.rubik(
        color: const Color(0xFF686868),
        fontSize: 17.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      );
}
