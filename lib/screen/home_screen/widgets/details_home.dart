import 'package:flutter/material.dart';

import 'package:ocdear/screen/home_screen/widgets/slider_home.dart';
import 'package:ocdear/utils/text_style.dart';

class DetailsHome extends StatelessWidget {
  const DetailsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const SliderHomePage(),
              const SizedBox(
                height: 32,
              ),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        'مغامرة الوسواس القهري',
                        style: AppTextStyle.textStyle22,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 155,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/home/games.png"))),
                      ),
                      Container(
                        width: 200,
                        height: 70,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/home/text games.png"))),
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
                                image: AssetImage(
                                    "assets/images/home/games.png"))),
                      ),
                      Container(
                        width: 200,
                        height: 70,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/home/text games.png"))),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        'مغامرة الوسواس القهري',
                        style: AppTextStyle.textStyle22,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 155,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/home/games.png"))),
                      ),
                      Container(
                        width: 200,
                        height: 70,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/home/text games.png"))),
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
                                image: AssetImage(
                                    "assets/images/home/games.png"))),
                      ),
                      Container(
                        width: 200,
                        height: 70,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/home/text games.png"))),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
