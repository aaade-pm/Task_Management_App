import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_management_app/common/utils/constants.dart';
import 'package:task_management_app/common/widgets/appstyle.dart';
import 'package:task_management_app/common/widgets/reusable_text.dart';
import 'package:task_management_app/features/onboarding/widgets/page_one.dart';
import 'package:task_management_app/features/onboarding/widgets/page_two.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: pageController,
            children: const [
              PageOne(),
              PageTwo(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30.h,
                horizontal: 20.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ReusableText(
                        text: 'SKIP',
                        style: appstyle(
                          16,
                          AppConst.kLight,
                          FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Icon(
                          Icons.arrow_circle_right_rounded,
                          size: 35,
                          color: AppConst.kLight,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn,
                      );
                    },
                    child: SmoothPageIndicator(
                      count: 2,
                      controller: pageController,
                      effect: const WormEffect(
                        dotHeight: 12,
                        dotWidth: 16,
                        spacing: 10,
                        dotColor: AppConst.kYellow,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
