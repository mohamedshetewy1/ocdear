import 'package:flutter/material.dart';
import 'package:ocdear/screen/home/game_screen/widgets/games_card.dart';
import 'package:ocdear/screen/home/learning_screen/widgets/content_description.dart';
import 'package:ocdear/screen/home/home_screen/widgets/slider_home.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class GamesHome extends StatelessWidget {
  const GamesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              'الألعاب',
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
