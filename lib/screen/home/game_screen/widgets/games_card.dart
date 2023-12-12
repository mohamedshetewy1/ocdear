import 'package:flutter/material.dart';

class GamesCard extends StatelessWidget {
  final String? image;
  const GamesCard({
    super.key,
    this.image,
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
