import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocdear/screen/parent_mode/home/doctors_screen/details_doctor.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class DoctorsCard extends StatelessWidget {
  final String? image;

  const DoctorsCard({
    super.key,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.normal),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          width: 190,
          height: 250,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 160,
                  height: 115,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/doctors.png"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        "د/ سارة أحمد",
                        style: AppTextStyle.textStyle16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
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
                          const Center(
                            child: Text(
                              "المنصوره ,شارع الجلاء",
                              style: AppTextStyle.textStyleGrey14,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailsDoctors(),
                            ),
                          );
                        },
                        child: Container(
                          width: 85,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.lightHover,
                          ),
                          child: const Center(
                              child: Text(
                            "مشاهدة",
                            style: AppTextStyle.textStyleDark15,
                          )),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
