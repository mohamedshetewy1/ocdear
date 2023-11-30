import 'package:flutter/material.dart';
import 'package:ocdear/components/custom_text_field.dart';
import 'package:ocdear/components/main_button.dart';
import 'package:ocdear/components/main_logo.dart';
import 'package:ocdear/screen/login_screens/enter_code.dart';

import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                const Text("هل نسيت كلمة السر؟",
                    textAlign: TextAlign.start,
                    style: AppTextStyle.textStyle25),
                const SizedBox(height: 14),
                const Text(
                  "من فضلك ادخل البريد الالكتروني او رقم الهاتف المرتبط\n بالتطبيق",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  text: "رقم الهاتف او الايميل",
                ),
                const SizedBox(height: 60),
                MainButton(
                  function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EnterCode(),
                      ),
                    );
                  },
                  text: "ارسال الرمز",
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
