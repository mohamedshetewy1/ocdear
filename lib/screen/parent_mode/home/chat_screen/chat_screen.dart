import 'package:flutter/material.dart';
import 'package:ocdear/screen/parent_mode/home/doctors_screen/widget/search_field.dart';
import 'package:ocdear/screen/parent_mode/home/home_page_p.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 85),
          child: Text(
            ' المحادثات',
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
            SearchField(),
          ],
        ),
      ),
    );
  }
}
