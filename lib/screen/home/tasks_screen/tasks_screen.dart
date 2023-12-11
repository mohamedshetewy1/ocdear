import 'package:flutter/material.dart';
import 'package:ocdear/components/custom_text_field.dart';

import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              'قائمة المهام',
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              CustomTextField(
                text: 'اضافة مهمه جديدة',
              ),
              Container(
                width: double.infinity,
                height: 650,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/to do.png"))),
              )
            ]),
          ),
        ));
  }
}
