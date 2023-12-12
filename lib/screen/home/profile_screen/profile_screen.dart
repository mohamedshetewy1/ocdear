import 'package:flutter/material.dart';
import 'package:ocdear/screen/home/profile_screen/widget/profile_menu.dart';
import 'package:ocdear/utils/text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            'الصفحة الشخصية',
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
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 270,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/home/profile.jpg"),
                ),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 67,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage:
                              AssetImage('assets/images/home/Ellipse 69.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "إسم المستخدم ",
                          style: AppTextStyle.textStyle22,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ProfileMenu(
              icon: "assets/icons/profile/Envelope.svg",
              text: "تغيير البريد الإلكتروني",
              press: () {},
              withDivider: true,
            ),
            ProfileMenu(
              icon: "assets/icons/profile/UserSwitch.svg",
              text: "التغيير الى وضع الوالدين",
              withDivider: true,
              press: () {},
            ),
            ProfileMenu(
              icon: "assets/icons/profile/Lock.svg",
              text: "تغيير كلمة المرور",
              withDivider: true,
              press: () {},
            ),
            ProfileMenu(
              icon: "assets/icons/profile/Palette.svg",
              text: " تغيير لون التطبيق",
              press: () {},
              withDivider: true,
            ),
            ProfileMenu(
              icon: "assets/icons/profile/CameraRotate.svg",
              text: "تغيير الصورة الرمزية",
              withDivider: true,
              press: () {},
            ),
            const SizedBox(
              height: 45,
            ),
            ProfileMenu(
              icon: "assets/icons/profile/SignOut.svg",
              color: Colors.red,
              text: "تسجيل الخروج",
              withDivider: false,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
