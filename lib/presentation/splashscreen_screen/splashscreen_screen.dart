import 'controller/splashscreen_controller.dart';
import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgStocksolon1,
                          height: 302.v,
                          width: 350.h,
                          radius: BorderRadius.circular(10.h)),
                      SizedBox(height: 45.v),
                      Text("lbl_sell_ml_models".tr,
                          style: CustomTextStyles.titleLargeInter_1),
                      SizedBox(height: 38.v),
                      Container(
                          width: 276.h,
                          margin: EdgeInsets.only(left: 43.h, right: 32.h),
                          child: Text("msg_lorem_ipsum_dolor".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallInterWhiteA700
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(
                          height: 41.v,
                          text: "lbl_get_started".tr,
                          onPressed: () {
                            Get.toNamed(AppRoutes.signUpScreen);
                          },
                          margin: EdgeInsets.only(left: 57.h, right: 46.h),
                          buttonStyle: CustomButtonStyles.fillYellow,
                          buttonTextStyle:
                              CustomTextStyles.bodyLargeOnPrimaryContainer),
                      SizedBox(height: 7.v)
                    ]))));
  }
}
