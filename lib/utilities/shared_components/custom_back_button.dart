import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_icons.dart';

class CustomBackButton extends StatefulWidget {
  final BuildContext context;
  const CustomBackButton({super.key, required this.context});

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(widget.context);
      },
      child: Row(
        children: [
          Image.asset(AppIcons.backIcon, scale: 1.2,),
          const Text("Back", style: TextStyle(
            fontSize: 13, color: Color(AppColors.greyTextColor)
          ),),
        ],
      ),
    );
  }
}
