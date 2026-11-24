import 'package:flutter/material.dart';

import '../AppColors/AppColors.dart';

class AppThemeManager {

  static ThemeData theme = ThemeData(
      scaffoldBackgroundColor: AppColors.purple,
      fontFamily: "Zain",

      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: AppColors.white,
          fontSize: 32,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: AppColors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: AppColors.white,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),

      )


  );


}