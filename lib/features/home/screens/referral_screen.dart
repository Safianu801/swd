import 'package:flutter/material.dart';

import '../../../utilities/constants/app_colors.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
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
              "Referrals",
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
