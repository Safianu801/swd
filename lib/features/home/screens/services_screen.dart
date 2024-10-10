import 'package:flutter/material.dart';

import '../../../utilities/constants/app_colors.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
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
              "Services",
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
