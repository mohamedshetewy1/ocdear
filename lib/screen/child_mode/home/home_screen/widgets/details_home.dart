import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocdear/screen/child_mode/home/game_screen/games_screen.dart';
import 'package:ocdear/screen/child_mode/home/game_screen/widgets/game_page.dart';
import 'package:ocdear/screen/child_mode/home/home_screen/widgets/slider_home.dart';
import 'package:ocdear/screen/child_mode/home/home_screen/widgets/welcome_widget.dart';
import 'package:ocdear/screen/child_mode/home/learning_screen/learning_screen.dart';
import 'package:ocdear/utils/colors.dart';
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
              const WelcomeWidget(),
              const SizedBox(
                height: 20,
              ),
              const SliderHomePage(),
              const SizedBox(
                height: 32,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        'فيديوهات تعليمية',
                        style: AppTextStyle.textStyle22,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (_) => const LearningTab(),
                          ));
                        },
                        child: const Text(
                          'عرض المزيد',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: AppColors.normalActive,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "ReadexPro"),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 117,
                            width: 170,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home/video.png"))),
                            child: Padding(
                              padding: const EdgeInsets.all(35),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: SvgPicture.asset(
                                    "assets/icons/Polygon 1.svg",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(children: [
                        Container(
                            height: 117,
                            width: 170,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home/video.png"))),
                            child: Padding(
                              padding: const EdgeInsets.all(35),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: SvgPicture.asset(
                                    "assets/icons/Polygon 1.svg",
                                  ),
                                ),
                              ),
                            )),
                      ]),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(children: [
                        Container(
                            height: 117,
                            width: 170,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home/video.png"))),
                            child: Padding(
                              padding: const EdgeInsets.all(35),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: SvgPicture.asset(
                                    "assets/icons/Polygon 1.svg",
                                  ),
                                ),
                              ),
                            )),
                      ]),
                      Stack(children: [
                        Container(
                            height: 117,
                            width: 170,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home/video.png"))),
                            child: Padding(
                              padding: const EdgeInsets.all(35),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: SvgPicture.asset(
                                    "assets/icons/Polygon 1.svg",
                                  ),
                                ),
                              ),
                            )),
                      ]),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        'مغامرة الوسواس القهري',
                        style: AppTextStyle.textStyleBold18,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (_) => const GamesHome(),
                          ));
                        },
                        child: const Text(
                          'عرض المزيد',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: AppColors.normalActive,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "ReadexPro"),
                        ))
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const GamePage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 200,
                            height: 155,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home/games.png"))),
                          ),
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
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const GamePage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 200,
                            height: 155,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home/games.png"))),
                          ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
