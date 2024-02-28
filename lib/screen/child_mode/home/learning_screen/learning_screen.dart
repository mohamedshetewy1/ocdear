import 'package:flutter/material.dart';
import 'package:ocdear/screen/child_mode/home/home_screen/widgets/slider_home.dart';
import 'package:ocdear/screen/child_mode/home/learning_screen/widgets/content_description.dart';
import 'package:ocdear/screen/child_mode/home/learning_screen/widgets/video_page.dart';
import 'package:ocdear/utils/text_style.dart';

import 'widgets/video_card.dart';

class LearningTab extends StatelessWidget {
  const LearningTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'التعلم',
              style: AppTextStyle.textStyle25,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
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
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const VideoPage(),
                    ),
                  );
                },
                child: Container(
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
              ),
              const SizedBox(
                height: 32,
              ),
              const ContentDescription(
                  description: "التغلب علي الوسواس القهري"),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const VideoPage(),
                    ),
                  );
                },
                child: Container(
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
              ),
              const SizedBox(
                height: 32,
              ),
              const ContentDescription(description: "فهم الوسواس القهري"),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const VideoPage(),
                    ),
                  );
                },
                child: Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
