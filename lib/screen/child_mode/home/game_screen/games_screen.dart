import 'package:flutter/material.dart';
import 'package:ocdear/screen/child_mode/home/game_screen/widgets/games_card.dart';
import 'package:ocdear/screen/child_mode/home/home_screen/widgets/slider_home.dart';
import 'package:ocdear/screen/child_mode/home/learning_screen/widgets/content_description.dart';
import 'package:ocdear/utils/text_style.dart';

class GamesHome extends StatelessWidget {
  const GamesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'الألعاب',
              style: AppTextStyle.textStyle25,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.white,
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SliderHomePage(),
              SizedBox(
                height: 32,
              ),
              ContentDescription(description: "مغامرة الوسواس القهري"),
              SizedBox(height: 10),
              GamesCard(),
              SizedBox(
                height: 20,
              ),
              ContentDescription(description: "مغامرة الوسواس القهري"),
              SizedBox(height: 10),
              GamesCard(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
