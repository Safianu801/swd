import 'package:flutter/material.dart';
import 'package:swd/utilities/constants/app_colors.dart';
import 'package:swd/utilities/constants/app_icons.dart';

class QuickActionsCard extends StatefulWidget {
  const QuickActionsCard({super.key});

  @override
  State<QuickActionsCard> createState() => _QuickActionsCardState();
}

class _QuickActionsCardState extends State<QuickActionsCard> {
  final firstSetTitle = [
    "Data",
    "Airtime",
    "Showmax",
    "Giftcards",
  ];
  final firstSetIcon = [
    AppIcons.dataIcon,
    AppIcons.airtimeIcon,
    AppIcons.showMaxIcon,
    AppIcons.creditCardIcon,
  ];
  final secondSetTitle = [
    "Betting",
    "Electricity",
    "TV/Cable",
    "E-Pin",
  ];
  final secondSetIcon = [
    AppIcons.bettingIcon,
    AppIcons.electricityIcon,
    AppIcons.tvCableIcon,
    AppIcons.ePinIcon,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Quick Actions",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 4; i++)
                QActionCard(title: firstSetTitle[i], icon: firstSetIcon[i],)
            ],
          ),
          const SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 4; i++)
                QActionCard(title: secondSetTitle[i], icon: secondSetIcon[i],)
            ],
          ),
        ],
      ),
    );
  }
}


class QActionCard extends StatelessWidget {
  final String title;
  final String icon;
  const QActionCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(
        color: const Color(AppColors.primaryColor).withOpacity(0.6),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icon),
              const SizedBox(height: 5,),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 13
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
