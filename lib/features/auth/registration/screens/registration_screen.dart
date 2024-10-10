import 'package:flutter/material.dart';
import '../../../../utilities/constants/app_colors.dart';
import '../../../../utilities/constants/app_fonts.dart';
import '../../../../utilities/constants/app_icons.dart';
import '../../../../utilities/shared_components/custom_back_button.dart';
import '../../../../utilities/shared_components/custom_button.dart';
import '../../../../utilities/shared_components/custom_text_field.dart';
import '../../../../utilities/shared_components/gradient_text.dart';
import 'email_verification_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailAddressController = TextEditingController();
  final createPasswordController = TextEditingController();
  final referralCodeController = TextEditingController();
  bool isClosed = false;

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
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(color: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomBackButton(context: context),
                            GestureDetector(
                                onTap: () {},
                                child: const GradientText(text: "Sign in instead", textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white
                                ),))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: "Create an account",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontFamily: AppFonts.AeonikTRIALLight,
                                        fontWeight: FontWeight.w300,
                                    )),
                              ]),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextField(
                                    title: "First name",
                                    prefixIcon: "",
                                    isObscure: false,
                                    controller: firstNameController,
                                    hintText: "First name",
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: CustomTextField(
                                    title: "Last name",
                                    prefixIcon: "",
                                    isObscure: false,
                                    controller: lastNameController,
                                    hintText: "Last name",
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            CustomTextField(
                              title: "Phone number",
                              prefixIcon: "",
                              isObscure: false,
                              controller: phoneNumberController,
                              hintText: "Enter phone number",
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            CustomTextField(
                              title: "Email address",
                              prefixIcon: "",
                              isObscure: false,
                              controller: firstNameController,
                              hintText: "Enter Email address",
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            CustomTextField(
                              title: "Password",
                              prefixIcon: "",
                              isObscure: isClosed ? false : true,
                              controller: createPasswordController,
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
                              height: 24,
                            ),
                            CustomTextField(
                              title: "Referral Code (Optional)",
                              prefixIcon: "",
                              isObscure: false,
                              controller: firstNameController,
                              hintText: "Enter Referral Code",
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomButton(title: "Next", onClick: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EmailVerificationScreen()));
                            }),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 2,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    height: 2,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Text(
                              "Account Information",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(AppColors.greyTextColor)
                              ),
                            )
                          ],
                        ),
                      ),
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
