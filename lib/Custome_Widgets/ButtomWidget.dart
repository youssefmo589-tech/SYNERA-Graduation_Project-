import 'package:flutter/material.dart';
import 'package:synera_graduation_project/core/Theme/AppColors/AppColors.dart';

class ButtomWidget extends StatelessWidget {
  final String title;

  const ButtomWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      width: 298,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.circular(16),
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
