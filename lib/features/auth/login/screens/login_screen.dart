import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../utilities/constants/app_colors.dart';
import '../../../../utilities/constants/app_fonts.dart';
import '../../../../utilities/constants/app_icons.dart';
import '../../../../utilities/shared_components/custom_button.dart';
import '../../../../utilities/shared_components/custom_text_field.dart';
import '../../../../utilities/shared_components/gradient_text.dart';
import '../../../home/components/bottom_navigation_components.dart';
import '../../registration/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isClosed = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(AppColors.bgColor),
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.bgColor),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset("images/bg_img.png"),
          ),
          Center(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: const Color(0xFF1E1E1E),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: "Welcome back",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontFamily: AppFonts.AeonikTRIALLight,
                                  fontWeight: FontWeight.w300)),
                          TextSpan(
                              text: "👋🏾",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white))
                        ]),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      CustomTextField(
                        title: "Email address",
                        prefixIcon: "",
                        isObscure: false,
                        controller: emailController,
                        hintText: "Enter Email address",
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      CustomTextField(
                        title: "Password",
                        prefixIcon: "",
                        isObscure: isClosed ? false : true,
                        controller: passwordController,
                        hintText: "Enter Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isClosed = !isClosed;
                              });
                            },
                            icon: Image.asset(isClosed
                                ? AppIcons.eyeOpen
                                : AppIcons.eyeClose)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(AppColors.greyTextColor)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButton(title: "Login", onClick: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BottomNavigationComponents()));
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "I don't have an account, ",
                            style: TextStyle(
                                color: Color(AppColors.greyTextColor),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const RegistrationScreen()));
                            },
                            child: const GradientText(
                              text: "Create account",
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
