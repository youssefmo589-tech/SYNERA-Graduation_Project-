import 'package:flutter/material.dart';
import 'package:synera_graduation_project/core/Theme/AppThemeManager/AppThemeManager.dart';

import 'core/AppRoutes/AppConfig/AppConfig.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:,
      onGenerateRoute: AppConfig.onGenerativeRoute,
      theme: AppThemeManager.theme,
    );
  }


}