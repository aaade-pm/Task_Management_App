import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:task_management_app/common/utils/constants.dart';
import 'package:task_management_app/common/widgets/appstyle.dart';
import 'package:task_management_app/common/widgets/custom_button.dart';
import 'package:task_management_app/common/widgets/custom_text_field.dart';
import 'package:task_management_app/common/widgets/reusable_text.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController? phone = TextEditingController();
  Country country = Country(
    phoneCode: "1",
    countryCode: "US",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "USA",
    example: "USA",
    displayName: "United States",
    displayNameNoCountryCode: "US",
    e164Key: "e164Key",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20.h,
              horizontal: 30.w,
            ),
            child: Image.asset(
              'assets/images/login.png',
              width: 300.w,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                ),
                child: ReusableText(
                  text: 'Please enter your phone number here!',
                  style: appstyle(
                    16,
                    AppConst.kLight,
                    FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                  ),
                  child: CustomTextfield(
                    controller: phone,
                    hintText: 'Enter phone number',
                    hintStyle: appstyle(18, AppConst.kBkdark, FontWeight.w500),
                    keyboardType: TextInputType.phone,
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(14),
                      child: GestureDetector(
                        onTap: () {
                          showCountryPicker(
                            context: context,
                            showPhoneCode: true,
                            countryListTheme: CountryListThemeData(
                              flagSize: 25,
                              textStyle: appstyle(
                                13,
                                AppConst.kLight,
                                FontWeight.w500,
                              ),
                              backgroundColor: AppConst.kBkdark,
                              bottomSheetHeight: AppConst.kHeight * 0.6,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                              searchTextStyle: appstyle(
                                16,
                                AppConst.kLight,
                                FontWeight.w500,
                              ),
                              inputDecoration: InputDecoration(
                                  suffixIconColor: AppConst.kLight,
                                  errorBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                      borderSide: BorderSide(
                                          color: AppConst.kRed, width: 0.5)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                      borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 0.5)),
                                  focusedErrorBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                      borderSide: BorderSide(
                                          color: AppConst.kRed, width: 0.5)),
                                  disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          color: AppConst.kLight, width: 0.5)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          color: AppConst.kLight, width: 2))),
                            ),
                            onSelect: (Country country) {
                              setState(() {});
                            },
                          );
                        },
                        child: ReusableText(
                          text: "${country.flagEmoji} + ${country.phoneCode}",
                          style: appstyle(
                            18,
                            AppConst.kBkdark,
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 18.h,
            ),
            child: CustomButton(
              width: AppConst.kWidth * 0.9,
              height: AppConst.kHeight * 0.07,
              buttonBorderColor: AppConst.kBkdark,
              buttonColor: AppConst.kLight,
              text: 'Send Code',
            ),
          )
        ],
      )),
    );
  }
}
