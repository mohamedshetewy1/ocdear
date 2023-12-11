import 'package:flutter/material.dart';
import 'package:ocdear/screen/home/profile_screen/widget/profile_menu.dart';
import 'package:ocdear/utils/colors.dart';
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
            color: AppColors.normalActive,
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
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage('assets/images/home/personal page.PNG'))),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 50,
                    ),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage:
                          AssetImage('assets/images/home/Ellipse 69.png'),
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
              height: 40,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Directionality(
            //       textDirection: TextDirection.rtl,
            //       child: Row(children: [
            //         SvgPicture.asset(
            //           colorFilter:
            //               const ColorFilter.mode(Colors.red, BlendMode.dstIn),
            //           'assets/icons/profile/SignOut.svg',
            //           width: 25,
            //           height: 25,
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         const Text(
            //           "تسجيل الخروج",
            //           style: AppTextStyle.textStyle16,
            //         ),
            //       ]),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
