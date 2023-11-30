import 'package:flutter/material.dart';
import 'package:ocdear/utils/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  IconData? icon;
  String? text;
  TextEditingController? controller;
  TextInputType? type;
  TextInputAction? action;
  String? Function(String?)? validator;

  CustomTextField(
      {super.key,
      this.validator,
      this.icon,
      this.text,
      this.controller,
      this.action,
      this.type});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: TextFormField(
          validator: validator,
          controller: controller,
          keyboardType: type,
          textInputAction: action,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: text,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w500, color: AppColors.greyColor),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.greyColor),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyColor),
            ),
            suffixIcon: Icon(
              icon,
              color: AppColors.greyColor,
            ),
          ),
        ),
      ),
    );
  }
}
