import 'package:flutter/material.dart';
import 'package:task_management_app/common/utils/constants.dart';

class CustomTextfield extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final void Function(String)? onChanged;
  const CustomTextfield({
    super.key,
    this.keyboardType,
    required this.hintText,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.hintStyle,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConst.kWidth * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppConst.kLight,
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        onChanged: onChanged,
        cursorHeight: 25,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            suffixIconColor: AppConst.kBkdark,
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: AppConst.kRed, width: 0.5)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
            focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: AppConst.kRed, width: 0.5)),
            disabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: AppConst.kGreyLight, width: 0.5)),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: AppConst.kBkdark, width: 0.5))),
      ),
    );
  }
}
