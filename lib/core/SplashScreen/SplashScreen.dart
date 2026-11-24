import 'package:flutter/material.dart';

import '../AppRoutes/AppRouteName/AppRouteName.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRouteName.signUp,
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(child: Text("Splash Screen", style: theme.titleMedium)),
    );
  }
}
