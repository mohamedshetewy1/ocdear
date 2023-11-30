import 'package:flutter/material.dart';
import 'package:ocdear/components/main_logo.dart';
import 'package:ocdear/screen/questions_screens/widgets/quiz_screen.dart';
import 'package:ocdear/utils/colors.dart';

import 'package:ocdear/utils/text_style.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const MainLogo(),
                const Text("الاسئلة",
                    textAlign: TextAlign.start,
                    style: AppTextStyle.textStyle25),
                const SizedBox(height: 14),
                const Text("برجاء اختيار إجابه واحدة فقط",
                    textAlign: TextAlign.start,
                    style: AppTextStyle.textStyle14),
                const SizedBox(height: 20),
                QuizScreen(),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
