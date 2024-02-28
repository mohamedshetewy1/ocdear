import 'package:flutter/material.dart';
import 'package:ocdear/screen/child_mode/home/game_screen/widgets/game_page.dart';

class GamesCard extends StatelessWidget {
  final String? image;
  const GamesCard({
    super.key,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          image: AssetImage("assets/images/home/games.png"))),
                ),
              ),
              Container(
                width: 200,
                height: 70,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/home/text games.png"))),
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
                          image: AssetImage("assets/images/home/games.png"))),
                ),
              ),
              Container(
                width: 200,
                height: 70,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/home/text games.png"))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
