import 'package:flutter/material.dart';
import 'package:ocdear/utils/text_style.dart';

class CustomCardChat extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;

  const CustomCardChat(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 27,
        backgroundImage: AssetImage(image!),
      ),
      title: Text(
        title!,
        style: AppTextStyle.textStyle14,
      ),
      subtitle: Text(
        subtitle!,
        style: AppTextStyle.textStyleGrey14,
      ),
      trailing: const Text('07:00 Am'),
    );
  }
}
