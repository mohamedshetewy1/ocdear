import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocdear/screen/child_mode/navigation_child/learning_screen/widgets/video_page.dart';

class VideoCard extends StatelessWidget {
  final String? image;
  const VideoCard({
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            width: 180,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Container(
                height: 115,
                width: 170,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/home/video.png"),
                      fit: BoxFit.fill),
                ),
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
            ),
          ),
        ),
      ],
    );
  }
}
