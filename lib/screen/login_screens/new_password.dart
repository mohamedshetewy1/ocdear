import 'package:flutter/material.dart';
import 'package:ocdear/components/custom_text_field.dart';
import 'package:ocdear/components/main_button.dart';
import 'package:ocdear/components/main_logo.dart';
import 'package:ocdear/screen/questions_screens/questions.dart';

import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                const Text("كتابة كلمة المرور الجديدة",
                    textAlign: TextAlign.start,
                    style: AppTextStyle.textStyle25),
                const SizedBox(height: 14),
                const Text("يجب ان تكون كلمة المرور مختلفه",
                    textAlign: TextAlign.start,
                    style: AppTextStyle.textStyle14),
                const SizedBox(height: 20),
                CustomTextField(
                  text: "كلمة المرور الجديدة",
                  icon: Icons.remove_red_eye,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  text: "تأكيد كلمة المرور",
                  icon: Icons.remove_red_eye,
                ),
                const SizedBox(height: 60),
                MainButton(
                  function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Questions(),
                      ),
                    );
                  },
                  text: "تأكيد",
                  buttonColor: AppColors.normalActive,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
