import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_responsive_resume/constants.dart';
import 'package:my_responsive_resume/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anh Huynh\'s Resume',
      theme: ThemeData.light().copyWith(
        primaryColor: CustomTheme.primaryColor,
        colorScheme: ColorScheme.light(
          primary: CustomTheme.primaryColor,
          primaryContainer: CustomTheme.primaryBackground,
          secondary: CustomTheme.secondaryColor,
          secondaryContainer: CustomTheme.secondaryBackground,
        ),
        iconTheme: IconThemeData(size: 16, color: CustomTheme.primaryText),
        // colorScheme: ColorScheme(
        //     brightness: Brightness.light,
        //     primary: CustomTheme.primaryColor,
        //     onPrimary: CustomTheme.primaryText,
        //     secondary: CustomTheme.secondaryColor,
        //     onSecondary: CustomTheme.secondaryText,
        //     error: Colors.redAccent,
        //     onError: Colors.white,
        //     background: CustomTheme.primaryBackground,
        //     onBackground: CustomTheme.primaryText,
        //     surface: CustomTheme.secondaryBackground,
        //     onSurface: CustomTheme.secondaryText),
        shadowColor: CustomTheme.shadowColor,
        textTheme: GoogleFonts.archivoTextTheme()
            .copyWith(
              bodyMedium: const TextStyle(
                fontSize: 15.0,
              ),
            )
            .apply(
              bodyColor: CustomTheme.primaryText,
              displayColor: CustomTheme.primaryText,
            ),
      ),
      home: const Homepage(),
    );
  }
}
