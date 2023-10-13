import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';
import 'package:tudu/config/constants/colors.dart';
import 'package:tudu/config/utils/material_color.dart';

@injectable
class AppTheme {
  ThemeData get lightTheme => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: getMaterialColor(AppColors.primary),
        primaryColor: getMaterialColor(AppColors.primary),
        brightness: Brightness.light,
        inputDecorationTheme: InputDecorationTheme(
            border:
                OutlineInputBorder(borderSide: const BorderSide(width: 1), borderRadius: BorderRadius.circular(12))),
        appBarTheme: const AppBarTheme(
          color: AppColors.primary,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColors.white),
          titleTextStyle: TextStyle(color: AppColors.white, fontSize: 14),
        ),
      );

  ThemeData get darkTheme => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: getMaterialColor(AppColors.primary),
        primaryColor: getMaterialColor(AppColors.primary),
        brightness: Brightness.dark,
        inputDecorationTheme: InputDecorationTheme(
            border:
                OutlineInputBorder(borderSide: const BorderSide(width: 1), borderRadius: BorderRadius.circular(12))),
        appBarTheme: const AppBarTheme(
          color: AppColors.black,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColors.white),
          titleTextStyle: TextStyle(color: AppColors.white, fontSize: 14),
        ),
      );
}
