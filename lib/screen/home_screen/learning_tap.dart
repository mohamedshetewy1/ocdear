import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocdear/screen/home_screen/widgets/slider_home.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

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
              const Directionality(
                textDirection: TextDirection.rtl,
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text(
                              'شرح الوسواس القهري',
                              style: AppTextStyle.textStyle22,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                ),
              ),
              const SizedBox(height: 20),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        'التغلب علي الوسواس القهري',
                        style: AppTextStyle.textStyle22,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                ),
              ),
              const SizedBox(height: 20),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        'فهم الوسواس القهري',
                        style: AppTextStyle.textStyle22,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
