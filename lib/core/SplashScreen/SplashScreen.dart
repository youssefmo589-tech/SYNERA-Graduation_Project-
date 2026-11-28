import 'package:flutter/material.dart';

import '../AppRoutes/AppRouteName/AppRouteName.dart';
import '../Theme/AppColors/AppColors.dart';
import '../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;


  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));


    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRouteName.login,
              (route) => false,
        );
      }
    });

    controller.forward();

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
        body: Stack(
          children: [
            Image.asset(
              Assets.images.splashBackground.path,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 56),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 7,
                    children: [
                      Assets.images.logoMark.image(width: 57, height: 63),
                      Assets.images.wordmarkYNERA.image(width: 200, height: 35),
                    ],
                  ),


                ],
              ),
            ),
            Positioned(
                right: 0,
                left: 0,
                bottom: 138,

                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [
                                  AppColors.lightblue,
                                  Colors.transparent,


                                ])

                        ),
                      ),
                    ),

                    Expanded(
                        flex: 2,
                        child:
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 5,
                            children: [
                              Text(
                                "Collective Intelligence.",
                                style: theme.titleSmall?.copyWith(
                                    color: AppColors.lightgrey,
                                    fontFamily: "Poppins",
                                    fontSize: 12), textAlign: TextAlign.start,
                              ),

                              Text(
                                "Individualized Finance.",
                                style: theme.titleSmall?.copyWith(
                                    color: AppColors.lightgrey,
                                    fontFamily: "Poppins",
                                    fontSize: 12), textAlign: TextAlign.start,
                              ),


                            ],
                          ),
                        )
                    ),

                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.centerRight,
                                begin: Alignment.centerLeft,
                                colors: [
                                  AppColors.lightblue,
                                  Colors.transparent,


                                ])

                        ),
                      ),
                    )

                  ],
                )

            ),
            Positioned(
                bottom: 56,
                right: 85,
                left: 85,


                child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    return LinearProgressIndicator(
                      value: controller.value,
                      backgroundColor: AppColors.lightblue,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.grey),

                    );
                  },


                )

            )
          ],
        )
    );
  }
}
