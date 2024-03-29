import 'package:flutter/material.dart';
import 'package:ocdear/screen/user_app/parent_mode/navigation_parent/doctors_screen/reservation/reservation_online.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class ReservationClinic extends StatelessWidget {
  const ReservationClinic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          ' تحديد الموعد',
          style: AppTextStyle.textStyleNormal20,
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
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ReservationClinic(),
                            ),
                          );
                        },
                        child: const Text(
                          "العيادة ",
                          style: AppTextStyle.textStyleBlackBold16,
                        )),
                    Container(
                      width: 60,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: AppColors.normalActive,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ReservationOnLine(),
                            ),
                          );
                        },
                        child: const Text(
                          "عبر الإنترنت",
                          style: AppTextStyle.textStyleBlackBold16,
                        )),
                    Container(
                      width: 60,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
