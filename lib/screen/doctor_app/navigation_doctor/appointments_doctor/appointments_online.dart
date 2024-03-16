import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ocdear/screen/doctor_app/navigation_doctor/appointments_doctor/widget/time_available.dart';
import 'package:ocdear/screen/doctor_app/navigation_doctor/appointments_doctor/widget/time_reserved.dart';
import 'package:ocdear/screen/user_app/parent_mode/navigation_parent/doctors_screen/reservation/reservation_clinic.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class AppointmentsOnLineDoctor extends StatelessWidget {
  const AppointmentsOnLineDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'المواعيد',
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
          Row(
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
                        color: Colors.white,
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
                            builder: (context) =>
                                const AppointmentsOnLineDoctor(),
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
                        color: AppColors.normalActive,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                children: [
                  Text(
                    "الاثنين",
                    style: AppTextStyle.textStyleBlackBold16,
                  ),
                ],
              ),
            ),
          ),
          const Gap(20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTimeReservedDoctor(),
              CustomTimeAvailableDoctor(),
              CustomTimeAvailableDoctor()
            ],
          ),
          const Gap(20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTimeAvailableDoctor(),
              CustomTimeReservedDoctor(),
              CustomTimeReservedDoctor()
            ],
          ),
          const Gap(20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    "لم تتم",
                    style: AppTextStyle.textStyleBlack14,
                  ),
                  Gap(5),
                  CircleAvatar(
                    backgroundColor: AppColors.lightActive,
                    radius: 6,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "تمت بالفعل",
                    style: AppTextStyle.textStyleBlack14,
                  ),
                  Gap(5),
                  CircleAvatar(
                    backgroundColor: Color(0xff8D8D8D),
                    radius: 6,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
