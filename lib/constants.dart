import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static Color primaryColor = const Color(0xffFEDEFF);
  static Color secondaryColor = const Color(0xffB9F3FC);
  static Color tertiaryColor = const Color(0xFFAEE2FF);
  static Color alternate = const Color(0xFF93C6E7);
  static Color primaryBackground = const Color(0xFFFFFFFF);
  static Color secondaryBackground = const Color(0xFFF6F8F9);
  // static Color primaryText = const Color(0xFF15114E);
  static Color primaryText = const Color(0xFF44566C);
  static Color secondaryText = const Color(0xFF555F6F);

  static Color shadowColor = const Color(0xff677680).withOpacity(0.1);
  // late Color primaryBtnText = Color(0xFFFFFFFF);
  // late Color lineColor = Color(0xFFE0E3E7);
  // late Color grayIcon = Color(0xFF95A1AC);
  // late Color gray200 = Color(0xFFDBE2E7);
  // late Color gray600 = Color(0xFF262D34);
  // late Color black600 = Color(0xFF090F13);
  // late Color tertiary400 = Color(0xFF39D2C0);
  // late Color textColor = Color(0xFF1E2429);
  static const borderRadius = 20.0;
  static const padding = 16.0;
  static const imageSize = 180.0;
  static const verticalMargin = 160.0;
}

final kFirstNameTextStyle = GoogleFonts.merriweather(
  textStyle: const TextStyle(fontSize: 30.0),
);

final kLastNameTextStyle = GoogleFonts.merriweather(
  textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 30.0),
);
