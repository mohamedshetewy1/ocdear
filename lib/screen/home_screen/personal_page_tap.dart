import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

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
            ),
            ProfileMenu(
              icon: "assets/icons/profile/UserSwitch.svg",
              text: "التغيير الى وضع الوالدين",
              press: () {},
            ),
            ProfileMenu(
              icon: "assets/icons/profile/Lock.svg",
              text: "تغيير كلمة المرور",
              press: () {},
            ),
            ProfileMenu(
              icon: "assets/icons/profile/Palette.svg",
              text: " تغيير لون التطبيق",
              press: () {},
            ),
            ProfileMenu(
              icon: "assets/icons/profile/CameraRotate.svg",
              text: "تغيير الصورة الرمزية",
              press: () {},
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextButton(
                onPressed: () {},
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/icons/profile/SignOut.svg',
                      width: 25,
                      height: 25,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Text(
                      "تسجيل الخروج",
                      style: AppTextStyle.textStyle16,
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });
  final String? text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        decoration: const UnderlineTabIndicator(
            borderSide: BorderSide(
          width: 0.5,
          color: AppColors.greyColor,
        )),
        child: TextButton(
          onPressed: press,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(children: [
              SvgPicture.asset(
                icon!,
                width: 25,
                height: 25,
                color: AppColors.dark,
              ),
              const SizedBox(
                width: 25,
              ),
              Text(
                text!,
                style: AppTextStyle.textStyle16,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
