import 'package:flutter/material.dart';

import '../AppColors/AppColors.dart';

class AppThemeManager {

  static ThemeData theme = ThemeData(
      scaffoldBackgroundColor: AppColors.black,
      fontFamily: "Manrope",

      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: AppColors.white,
          fontSize: 26,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: AppColors.white,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: AppColors.white,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),

      )


  );


}