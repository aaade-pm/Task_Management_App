import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_app/common/utils/constants.dart';
import 'package:task_management_app/common/widgets/appstyle.dart';
import 'package:task_management_app/common/widgets/custom_button.dart';
import 'package:task_management_app/common/widgets/reusable_text.dart';
import 'package:task_management_app/features/auth/pages/login_page.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHeight,
      width: AppConst.kWidth,
      color: AppConst.kBkdark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Image.asset('assets/images/work.png'),
          ),
          SizedBox(
            height: 50.h,
          ),
          Column(
            children: [
              ReusableText(
                text: "ISE LOGUN ISE, MURA SI SE !",
                style: appstyle(25, AppConst.kLight, FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: CustomButton(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              height: AppConst.kHeight * 0.06,
              width: AppConst.kWidth * 0.8,
              buttonBorderColor: AppConst.kLight,
              text: 'Login in with phone number',
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
