import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ocdear/screen/parent_mode/home/doctors_screen/chat_doctor.dart';
import 'package:ocdear/screen/parent_mode/home/doctors_screen/reservation_doctors.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class DetailsDoctors extends StatelessWidget {
  const DetailsDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          ' الطبيب',
          style: AppTextStyle.textStyle25,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.normalActive,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/vector_doctors.png"),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: AppColors.light,
                    radius: 85,
                    // backgroundImage: AssetImage(),
                    child: Image.asset(
                      width: 180,
                      'assets/images/det_doctor.png',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "د/ سارة أحمد",
                      style: AppTextStyle.textStyle25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 125),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/location.svg",
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          " المنصوره ,شارع الجلاء",
                          style: AppTextStyle.textStyleGrey14,
                          // softWrap: true,
                          overflow: TextOverflow.fade,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "الوصف",
                      style: AppTextStyle.textStyle22,
                    ),
                    Gap(
                      15,
                    ),
                    SizedBox(
                      height: 120,
                      child: Text(
                        'فرد متخصص في مجال الطب أو التخصص الطبي nالذي يمتلك مهارات وخبرات واسعة في تقديم الرعاية الصحية.يتميز بالمعرفة العلمية العميقة والمهارات العملية في\n تشخيص الأمراض. فرد متخصص في مجال الطب أو\n التخصص الطبي الذي يمتلك مهارات وخبرات واسعة في \nتقديم الرعاية الصحية. يتميز بالمعرفة العلمية العميقة والمهارات العملية في تشخيص الأمراض.',
                        style: AppTextStyle.textStyleGrey14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChatDoctors(),
                      ),
                    );
                  },
                  child: Container(
                    width: 175,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.dark),
                    ),
                    child: const Center(
                      child: Text(
                        "مراسلة",
                        style: AppTextStyle.textStyleDark15,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReservationDoctors(),
                      ),
                    );
                  },
                  child: Container(
                    width: 175,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.dark,
                    ),
                    child: const Center(
                      child: Text(
                        "تحديد موعد",
                        style: AppTextStyle.textStyleMain15,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
