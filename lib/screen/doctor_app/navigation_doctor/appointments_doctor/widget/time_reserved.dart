import 'package:flutter/material.dart';
import 'package:ocdear/utils/text_style.dart';

class CustomTimeReservedDoctor extends StatelessWidget {
  const CustomTimeReservedDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 223, 221, 221),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 148, 145, 145)),
      ),
      child: const Center(
        child: Text(
          "02:00 pm",
          style: AppTextStyle.textStyleGrey14,
        ),
      ),
    );
  }
}
