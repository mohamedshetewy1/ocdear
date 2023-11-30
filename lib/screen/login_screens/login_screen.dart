import 'package:flutter/material.dart';
import 'package:ocdear/components/custom_text_field.dart';
import 'package:ocdear/components/google_button.dart';
import 'package:ocdear/components/main_button.dart';
import 'package:ocdear/components/main_logo.dart';
import 'package:ocdear/screen/home_screen/home_page.dart';
import 'package:ocdear/screen/login_screens/forget_password.dart';
import 'package:ocdear/screen/sign_up_screen/sign_up_screen.dart';

import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const MainLogo(),
              const Text(
                " ! مرحبا بعودتك ",
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.normalActive),
              ),
              const SizedBox(height: 14),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "OCDEAR",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.normalActive),
                  ),
                  Text("اهلا بيك في تطبيقنا ",
                      textAlign: TextAlign.end,
                      style: AppTextStyle.textStyle14),
                ],
              ),
              const SizedBox(height: 20),
              CustomTextField(
                text: "رقم الهاتف او الإيميل",
              ),
              CustomTextField(
                text: "كلمة المرور",
                icon: Icons.remove_red_eye,
              ),
              const SizedBox(height: 14),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgetPassword(),
                      ));
                },
                child: const Text(
                  "هل نسيت كلمة المرور ؟",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.normalActive,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 60),
              MainButton(
                text: "تسجيل الدخول",
                buttonColor: AppColors.normalActive,
                textColor: Colors.white,
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const HomePage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "او",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.greyColor),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const ButtonWithGoogle(),
              const SizedBox(height: 20),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "ليس لديك حساب ؟ ",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) =>
                              const SignUpScreen(), // حط الاسكرين اللي عايز تظهرها بعد الاسبلاش هنا
                        ));
                      },
                      child: const Text(
                        "انشاء حساب",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColors.normalActive,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
