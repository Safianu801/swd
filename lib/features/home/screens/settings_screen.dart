import 'package:flutter/material.dart';

import '../../../utilities/constants/app_colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.bgColor),
      appBar: AppBar(
        backgroundColor: const Color(AppColors.bgColor),
        surfaceTintColor: const Color(AppColors.bgColor),
        automaticallyImplyLeading: false,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Settings",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Color(AppColors.greyTextColor)
              ),
            ),
          )
        ],
      ),
    );
  }
}
