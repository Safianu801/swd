import 'package:flutter/material.dart';
import 'package:swd/features/home/screens/home_screen/components/balance_card.dart';
import 'package:swd/features/home/screens/home_screen/components/news_and_updates_section.dart';
import 'package:swd/features/home/screens/home_screen/components/quick_action_button.dart';
import 'package:swd/features/home/screens/home_screen/components/quick_actions_card.dart';
import 'package:swd/utilities/constants/app_icons.dart';
import 'package:swd/utilities/constants/app_string.dart';

import '../../../../../utilities/constants/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.bgColor),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 0.5, color: Colors.black)
              ),
              child: Center(
                child: Image.asset(AppIcons.userIcon),
              ),
            ),
            const Text(
              "Welcome sam 👋🏾",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 0.5, color: Colors.black)
              ),
              child: Center(
                child: Image.asset(AppIcons.notificationIcon),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const BalanceCard(),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        QuickActionButton(icon: AppIcons.plusIcon, title: "Top up", onClick: (){}),
                        Container(height: 30, width: 1, decoration: BoxDecoration(color: Colors.grey[300]),),
                        QuickActionButton(icon: AppIcons.sendIcon, title: "Transfer", onClick: (){}),
                        Container(height: 30, width: 1, decoration: BoxDecoration(color: Colors.grey[300]),),
                        QuickActionButton(icon: AppIcons.historyIcon, title: "History", onClick: (){}),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 3,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    QuickActionsCard(),
                    SizedBox(height: 15,),
                    NewsAndUpdatesSection()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: (){},
        child: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(AppColors.gPartTwo),
                Color(AppColors.gPartTwo),
                Color(AppColors.gPartOne),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset(AppIcons.customerCareIcon),
            ),
          ),
        ),
      ),
    );
  }
}
