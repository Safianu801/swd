import 'package:flutter/material.dart';

import '../../../utilities/constants/app_colors.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
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
              "Statistics",
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
