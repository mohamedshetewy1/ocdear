import 'package:flutter/material.dart';
import 'package:ocdear/screen/child_mode/navigation_child/game_screen/widgets/game_page.dart';

class GamesCard extends StatelessWidget {
  final String? image;
  const GamesCard({
    super.key,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
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
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 155,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/home/games.png"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      width: 150,
                      height: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/home/text games.png"),
                              fit: BoxFit.fill)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
