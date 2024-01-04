import 'package:flutter/material.dart';
import 'package:task_management_app/common/utils/constants.dart';
import 'package:task_management_app/common/widgets/appstyle.dart';
import 'package:task_management_app/common/widgets/reusable_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ReusableText(
          text: 'IDAN AT WORK',
          style: appstyle(
            25,
            AppConst.kGreen,
            FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
