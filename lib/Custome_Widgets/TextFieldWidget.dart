import 'package:flutter/material.dart';

import '../core/Theme/AppColors/AppColors.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;

  final TextEditingController controller;

  final String? Function(String?)? validator;

  final Icon? prefixicon;

  final Icon? suffixicon;

  const TextFieldWidget({
    super.key,
    required this.title,
    required this.controller,
    required this.validator,
    this.prefixicon,
    this.suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: TextFormField(
        validator: validator,
        autovalidateMode: AutovalidateMode.onUnfocus,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixicon,
          suffixIcon: suffixicon,
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          hintText: title,
          hintStyle: theme.titleMedium,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: AppColors.white, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: AppColors.white, width: 1.5),
          ),
        ),
      ),
    );
  }
}
