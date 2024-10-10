import 'package:flutter/material.dart';

import '../../../utilities/constants/app_colors.dart';
import '../../../utilities/constants/app_icons.dart';
import '../screens/home_screen/screens/home_screen.dart';
import '../screens/referral_screen.dart';
import '../screens/services_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/statistics_screen.dart';

class BottomNavigationComponents extends StatefulWidget {
  const BottomNavigationComponents({super.key});

  @override
  State<BottomNavigationComponents> createState() => _BottomNavigationComponentsState();
}

class _BottomNavigationComponentsState extends State<BottomNavigationComponents> {
  List<Widget> bottomNavScreen = [
    const HomeScreen(),
    const ServicesScreen(),
    const StatisticsScreen(),
    const ReferralScreen(),
    const SettingsScreen(),
  ];
  int _currentScreen = 0;

  void onScreenSelected(int index) {
    setState(() {
      _currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: bottomNavScreen[_currentScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(AppColors.bgColor),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentScreen,
        onTap: onScreenSelected,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(AppColors.greyTextColor).withOpacity(0.5),
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset(
                AppIcons.homeIcon,
                color: _currentScreen == 0 ? Colors.white : const Color(AppColors.greyTextColor).withOpacity(0.5),
              )
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  AppIcons.serviceIcon,
                  color: _currentScreen == 1 ? Colors.white : const Color(AppColors.greyTextColor).withOpacity(0.5),
                )
              ),
              label: "Services"),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset(
                AppIcons.statisticsIcon,
                color: _currentScreen == 2 ? Colors.white : const Color(AppColors.greyTextColor).withOpacity(0.5),
              ),
            ),
            label: "Statistics",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset(
                AppIcons.referralIcon,
                color: _currentScreen == 3 ? Colors.white : const Color(AppColors.greyTextColor).withOpacity(0.5),
              )
            ),
            label: "Referrals",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  AppIcons.settingsIcon,
                  color: _currentScreen == 4 ? Colors.white : const Color(AppColors.greyTextColor).withOpacity(0.5),
                )
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
