import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        Stack(children: [
          Container(
              height: 117,
              width: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image ?? ""))),
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
    );
  }
}
