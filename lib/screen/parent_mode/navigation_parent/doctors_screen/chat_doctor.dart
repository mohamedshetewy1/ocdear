import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class ChatDoctors extends StatelessWidget {
  const ChatDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.light,
                    radius: 30,
                    child: Image.asset(
                      width: 180,
                      'assets/images/user_chat.png',
                    ),
                  ),
                  const Gap(20),
                  const Column(
                    children: [
                      Text(
                        "د/ سارة أحمد",
                        style: AppTextStyle.textStyleNormal15,
                      ),
                      Row(
                        children: [
                          Text(
                            "نشط الأن  ",
                            style: AppTextStyle.textStyleBlack14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Gap(130),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                  )
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
