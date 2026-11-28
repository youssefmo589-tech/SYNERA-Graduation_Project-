import 'package:flutter/material.dart';

import '../AppColors/AppColors.dart';

class AppThemeManager {

  static ThemeData theme = ThemeData(
      scaffoldBackgroundColor: AppColors.black,
      fontFamily: "Manrope",

      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),

      )


  );


}