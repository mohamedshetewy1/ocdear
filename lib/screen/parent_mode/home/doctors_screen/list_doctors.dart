import 'package:flutter/material.dart';
import 'package:ocdear/screen/parent_mode/home/doctors_screen/widget/doctors_card.dart';
import 'package:ocdear/screen/parent_mode/home/doctors_screen/widget/search_field.dart';
import 'package:ocdear/screen/parent_mode/home/home_page_p.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class ListDoctors extends StatelessWidget {
  final String? image;
  const ListDoctors({
    super.key,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 85),
          child: Text(
            'أشهر الأطباء',
            style: AppTextStyle.textStyle25,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePageParentMode(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.normalActive,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          SearchField(),
          SizedBox(
            height: 40,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [DoctorsCard(), DoctorsCard()]),
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [DoctorsCard(), DoctorsCard()]),
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [DoctorsCard(), DoctorsCard()]),
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [DoctorsCard(), DoctorsCard()]),
        ],
      )),
    );
  }
}
