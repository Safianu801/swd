import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final controller;
  final String prefixIcon;
  final IconButton? suffixIcon;
  final bool isObscure;
  final String hintText;
  const CustomTextField({super.key, required this.title, this.controller, required this.prefixIcon, this.suffixIcon, required this.isObscure, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15
          ),
        ),
        const SizedBox(height: 3,),
        TextFormField(
          controller: controller,
          obscureText: isObscure,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w400
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 0.8, color: Color(AppColors.primaryColor))
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 0.8, color: Color(AppColors.primaryColor))
            ),
            fillColor: const Color(AppColors.primaryColor).withOpacity(0.3),
            filled: true,
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.all(10),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(AppColors.greyTextColor),
              fontSize: 13,
              fontWeight: FontWeight.w400
            )
          ),
        )
      ],
    );
  }
}
