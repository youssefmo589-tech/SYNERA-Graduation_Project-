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
        color: AppColors.darkgrey,
        borderRadius: islogin ? BorderRadiusGeometry.circular(26) : BorderRadius
            .circular(10),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Text(title, style: theme.titleLarge),
        ),
      ),
    );
  }
}
