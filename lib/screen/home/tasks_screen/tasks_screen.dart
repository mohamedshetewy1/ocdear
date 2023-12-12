import 'package:flutter/material.dart';
import 'package:ocdear/screen/home/learning_screen/widgets/content_description.dart';
import 'package:ocdear/utils/colors.dart';

import 'package:ocdear/utils/text_style.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Text(
            'قائمة المهام',
            style: AppTextStyle.textStyle25,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 650,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/to do (1).png"))),
            )
            // const ContentDescription(
            //   description: "اليوم",
            // ),
            // Directionality(
            //   textDirection: TextDirection.rtl,
            //   child: Row(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.symmetric(
            //             horizontal: 30, vertical: 15),
            //         child: Container(
            //           child: const Text(
            //             "المهمة الاولي",
            //             style: AppTextStyle.textStyle15,
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
