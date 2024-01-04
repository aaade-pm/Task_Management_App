import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const ReusableText({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      maxLines: 1,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: style,
    );
  }
}
