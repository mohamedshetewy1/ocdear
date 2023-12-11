import 'package:flutter/material.dart';
import 'package:ocdear/screen/home/learning_screen/widgets/content_description.dart';
import 'package:ocdear/screen/home/home_screen/widgets/slider_home.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

import 'widgets/video_card.dart';

class LearningTab extends StatelessWidget {
  const LearningTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              'التعلم',
              style: AppTextStyle.textStyle25,
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.normalActive,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SliderHomePage(),
              const SizedBox(
                height: 32,
              ),
              const ContentDescription(description: "شرح الوسواس القهري"),
              const SizedBox(height: 20),
              Container(
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // itemExtent: 10,
                  itemCount: 5,
                  itemBuilder: (context, index) =>
                      const VideoCard(image: "assets/images/home/video.png"),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const ContentDescription(
                  description: "التغلب علي الوسواس القهري"),
              const SizedBox(height: 20),
              Container(
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // itemExtent: 10,
                  itemCount: 5,
                  itemBuilder: (context, index) =>
                      const VideoCard(image: "assets/images/home/video.png"),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const ContentDescription(description: "فهم الوسواس القهري"),
              const SizedBox(height: 20),
              Container(
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // itemExtent: 10,
                  itemCount: 5,
                  itemBuilder: (context, index) =>
                      const VideoCard(image: "assets/images/home/video.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
