import 'package:flutter/material.dart';

import '../../../../utilities/constants/app_colors.dart';
import '../../../../utilities/constants/app_fonts.dart';
import '../../../../utilities/shared_components/custom_back_button.dart';
import '../../../../utilities/shared_components/custom_button.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onOTPChanged(String value, int index) {
    if (value.isNotEmpty && index < _focusNodes.length - 1) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
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
          SafeArea(
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
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: "verify your email",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontFamily: AppFonts.AeonikTRIALLight,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ]),
                          ),
                          const Text(
                            "Please enter the OTP sent to",
                            style: TextStyle(
                                color: Color(AppColors.greyTextColor),
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          ),
                          const Text(
                            "tolu.ab19@gmail.com",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(7, (index) {
                      if (index == 3) {
                        return const Text(
                          ' - ',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        );
                      }
                      int otpIndex = index > 3 ? index - 1 : index;
                      return SizedBox(
                        width: 48,
                        height: 48,
                        child: TextField(
                          controller: _controllers[otpIndex],
                          focusNode: _focusNodes[otpIndex],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                  width: 0.8,
                                  color: Color(AppColors.primaryColor)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                  width: 0.8,
                                  color: Color(AppColors.primaryColor)),
                            ),
                            filled: true,
                            fillColor: const Color(AppColors.primaryColor)
                                .withOpacity(0.3),
                          ),
                          onChanged: (value) {
                            _onOTPChanged(value, otpIndex);
                          },
                        ),
                      );
                    }),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      CustomButton(title: "Verify email", onClick: () {}),
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
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Email verification",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(AppColors.greyTextColor)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
