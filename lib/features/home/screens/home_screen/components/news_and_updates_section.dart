import 'dart:math';

import 'package:flutter/material.dart';
import 'package:swd/utilities/constants/app_colors.dart';

class NewsAndUpdatesSection extends StatefulWidget {
  const NewsAndUpdatesSection({super.key});

  @override
  State<NewsAndUpdatesSection> createState() => _NewsAndUpdatesSectionState();
}

class _NewsAndUpdatesSectionState extends State<NewsAndUpdatesSection> {
  final sampleNews = [
    "sample_news_five.jfif",
    "sample_news_four.jfif",
    "sample_news_one.jfif",
    "sample_news_six.jfif",
    "sample_news_three.jfif",
    "sample_news_two.jfif",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "News & Updates",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              GestureDetector(onTap: () {}, child: const Text("View all", style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(AppColors.gPartTwo)
              ),)),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        SizedBox(
          height: 110,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: sampleNews.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width /1.3,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset("images/${sampleNews[Random().nextInt(sampleNews.length)]}", fit: BoxFit.cover,),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
