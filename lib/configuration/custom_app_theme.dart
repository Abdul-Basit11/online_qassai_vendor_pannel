import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData customThemeData(BuildContext context) {
    return ThemeData(


      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))
        )
      ),
      useMaterial3: true,
      colorSchemeSeed: Color(0xffD95D4C),

      /// floating button
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        /// active dot color too
        backgroundColor:AppColors.kAccentColor,
      ),

      /// textfield
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.kSecondaryColor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.kAccentColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),

      /// text button
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      /// elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(

          backgroundColor: AppColors.kPrimaryColor,

          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),

      /// text theme
      textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme.apply().copyWith(
              /// btn text
              subtitle2: TextStyle(color:AppColors.kSecondaryColor,
              ),

              /// email text OR field title
              caption: TextStyle(
                  color: AppColors.kTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),

              /// title text
              headline6: TextStyle(
                  color: AppColors.kTextColor,
                  fontWeight: FontWeight.w600),

              /// cnic image text
              bodyText1: TextStyle(
                  color: AppColors.kTextColor,
                  fontWeight: FontWeight.w200,
                  fontSize: 12),

              /// texfield hint text
              overline: TextStyle(
                  color: AppColors.kTextColor,
                  fontSize: 12),
            ),

      ),
    );
  }
}
