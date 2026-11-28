import 'package:flutter/material.dart';
import 'package:synera_graduation_project/core/Theme/AppColors/AppColors.dart';

class ButtonWidget extends StatelessWidget {
  final String title;

  bool islogin;

  final double height;

  ButtonWidget(
      {super.key, required this.title, this.islogin = false, required this.height});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      width: 298,
      height: height,
      decoration: BoxDecoration(
        gradient: islogin
            ? LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.buttonColor,
            AppColors.lightblue,
          ],
        )
            : LinearGradient(
          colors: [AppColors.buttonColor],
        ),
        borderRadius: BorderRadius.circular(islogin ? 26 : 10),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
