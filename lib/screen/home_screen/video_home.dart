import 'package:flutter/material.dart';

class VideoHomePage extends StatefulWidget {
  const VideoHomePage({super.key});

  @override
  State<VideoHomePage> createState() => _VideoHomePageState();
}

class _VideoHomePageState extends State<VideoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/home/vid.PNG'),
                fit: BoxFit.cover),
          ),
        )
      ],
    );
  }
}
