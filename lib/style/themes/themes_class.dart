import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/style/app_colors.dart';

class My_theme {
  static ThemeData lighttheme = ThemeData(
    scaffoldBackgroundColor: colors.lightGreencolor,
    appBarTheme: const AppBarTheme(
        color: colors.Primarycolor,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: Colors.white, size: 35)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: colors.Primarycolor,
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.grey,
    ),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: GoogleFonts.roboto(
            fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black)),
  );
  static ThemeData darktheme = ThemeData();
}
