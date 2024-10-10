import 'package:flutter/material.dart';
import 'package:swd/utilities/constants/app_icons.dart';
import 'package:swd/utilities/shared_components/gradient_text.dart';

import '../../../../../utilities/constants/app_colors.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({super.key});

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
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
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 11),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  "WALLET BALANCE",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "NGN",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      isChecked ? "*****" : "50,000",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector(onTap: (){
                      setState(() {
                        isChecked = !isChecked;
                      });
                    }, child: Image.asset(isChecked ? AppIcons.eyeClose : AppIcons.eyeOpen))
                  ],
                ),
                const Spacer(),
                Container(
                  width: 105,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            "Cashback ",
                            style: TextStyle(
                              fontSize: 10
                            ),
                          ),
                          GradientText(text: "N341.20", textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 10
                          ),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
            const SizedBox(width: 20,),
            Container(
              height: MediaQuery.of(context).size.height,
              width: 1,
              decoration: BoxDecoration(
                color: Colors.red[800]
              ),
            ),
            const SizedBox(width: 20,),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(15))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "MONIEPOINT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "8192017482",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(onTap: (){}, child: Image.asset(AppIcons.copyIcon))
                      ],
                    ),
                    const Text(
                      "Deposit Fee: N20",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        decorationColor: Colors.white,
                        decoration: TextDecoration.underline
                      ),
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
