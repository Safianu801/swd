import 'package:flutter/material.dart';

class QuickActionButton extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onClick;
  const QuickActionButton({super.key, required this.icon, required this.title, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(icon, scale: 1,),
        const SizedBox(height: 10,),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}
