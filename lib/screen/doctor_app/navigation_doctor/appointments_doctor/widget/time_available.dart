import 'package:flutter/material.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class CustomTimeAvailableDoctor extends StatelessWidget {
  const CustomTimeAvailableDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.light,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.dark),
      ),
      child: const Center(
        child: Text(
          "02:00 pm",
          style: AppTextStyle.textStyleBlack14,
        ),
      ),
    );
  }
}
