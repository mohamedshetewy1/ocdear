import 'package:flutter/material.dart';
import 'package:ocdear/utils/colors.dart';
import 'package:ocdear/utils/text_style.dart';

class ChatDoctors extends StatelessWidget {
  const ChatDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
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
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert)),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
