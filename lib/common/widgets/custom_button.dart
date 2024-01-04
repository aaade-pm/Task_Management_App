import 'package:flutter/material.dart';
import 'package:task_management_app/common/widgets/appstyle.dart';
import 'package:task_management_app/common/widgets/reusable_text.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final double height;
  final double width;
  final Color? buttonColor;
  final Color buttonBorderColor;
  final String text;

  const CustomButton({
    super.key,
    this.onTap,
    required this.height,
    required this.width,
    this.buttonColor,
    required this.buttonBorderColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: buttonBorderColor,
            )),
        child: Center(
          child: ReusableText(
            text: text,
            style: appstyle(
              18,
              buttonBorderColor,
              FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
