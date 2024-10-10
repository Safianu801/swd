import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  const GradientText({super.key, required this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Color(AppColors.gPartTwo),
          Color(AppColors.gPartTwo),
          Color(AppColors.gPartOne),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(
        text,
        style: textStyle ?? const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
