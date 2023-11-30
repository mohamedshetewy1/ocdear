import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ocdear/utils/colors.dart';

class SliderHomePage extends StatefulWidget {
  const SliderHomePage({super.key});

  @override
  State<SliderHomePage> createState() => _SliderHomePageState();
}

class _SliderHomePageState extends State<SliderHomePage> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/home/slider1.png'},
    {"id": 2, "image_path": 'assets/images/home/Rectangle 16.png'},
    {"id": 3, "image_path": 'assets/images/home/Rectangle 16.png'},
    {"id": 3, "image_path": 'assets/images/home/Rectangle 16.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        onTap: () {
          // print(currentIndex);
        },
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: CarouselSlider(
              items: imageList
                  .map(
                    (item) => Image.asset(
                      item['image_path'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 5),
                scrollPhysics: const BouncingScrollPhysics(),
                // autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => carouselController.animateToPage(entry.key),
            child: Container(
              width: currentIndex == entry.key ? 17 : 7,
              height: 7.0,
              margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: AppColors.dark,
                  ),
                  color: currentIndex == entry.key
                      ? AppColors.dark
                      : AppColors.lightHover),
            ),
          );
        }).toList(),
      )
    ]);
  }
}
