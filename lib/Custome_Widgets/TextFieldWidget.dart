import 'package:flutter/material.dart';

import '../core/Theme/AppColors/AppColors.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;

  final TextEditingController controller;

  final String? Function(String?)? validator;

  final Widget? prefixicon;

  final Widget? suffixicon;

  final bool obscureText;

  const TextFieldWidget({
    super.key,
    this.obscureText = false,
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
      child: TextFormField(
        obscureText: obscureText,
        style: theme.titleMedium?.copyWith(color: AppColors.white),
        cursorColor: AppColors.white,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUnfocus,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixicon,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 30,
              minHeight: 30,
            ),
          suffixIcon: suffixicon,
          hintText: title,
            hintStyle: theme.titleMedium?.copyWith(color: AppColors.lightblue),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightgrey, width: 2)

            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightgrey, width: 2)

            )


        ),
      ),
    );
  }
}
