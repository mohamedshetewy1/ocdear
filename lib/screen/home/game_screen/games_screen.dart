import 'package:flutter/material.dart';
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

class GamesCard extends StatelessWidget {
  const GamesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              width: 200,
              height: 155,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/home/games.png"))),
            ),
            Container(
              width: 200,
              height: 70,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/home/text games.png"))),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 200,
              height: 155,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/home/games.png"))),
            ),
            Container(
              width: 200,
              height: 70,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/home/text games.png"))),
            ),
          ],
        )
      ],
    );
  }
}
