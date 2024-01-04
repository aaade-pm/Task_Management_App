import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_app/common/utils/constants.dart';
import 'package:task_management_app/common/widgets/appstyle.dart';
import 'package:task_management_app/common/widgets/reusable_text.dart';

class PageOne extends StatelessWidget {
  const PageOne({
    super.key,
  });

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
            child: Image.asset('assets/images/task.png'),
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
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  'Welcome! Do you want to create a task fast and with ease ???',
                  style: appstyle(
                    16,
                    AppConst.kLight,
                    FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
