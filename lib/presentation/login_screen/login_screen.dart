import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';

import 'controller/login_controller.dart';
import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/core/utils/validation_functions.dart';
import 'package:admin_app/widgets/custom_elevated_button.dart';
import 'package:admin_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 26.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStocksolon1,
                      height: 68.v,
                      width: 83.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Text(
                          "lbl_welcome_admin".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 341.h,
                      margin: EdgeInsets.only(
                        left: 13.h,
                        right: 16.h,
                      ),
                      child: Text(
                        "msg_enter_your_full".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 47.v),
                    _buildInputFieldEmail(),
                    SizedBox(height: 24.v),
                    _buildInputFieldPassword(),
                    SizedBox(height: 51.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_don_t_have_an_account2".tr,
                            style: CustomTextStyles.labelLargeffffffff,
                          ),
                          TextSpan(
                            text: "lbl_sign_up".tr,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(AppRoutes.signUpScreen);
                              },
                            style: CustomTextStyles.labelLargeff0091ff,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_here".tr,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(AppRoutes.signUpScreen);
                              },
                            style: CustomTextStyles.labelLargeff0091ff,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 15.v),
                    Text("Or"),
                    SizedBox(height: 8.v),
                    Container(
                      width: 42, // Adjust the width to desired icon size
                      height: 42, // Adjust the height to desired icon size
                      child: Image.asset("assets/images/gitHub.png"),
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 354.h,
                      margin: EdgeInsets.only(
                        left: 7.h,
                        right: 9.h,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_by_registering2".tr,
                              style: CustomTextStyles.labelMediumff979797,
                            ),
                            TextSpan(
                              text: "msg_terms_conditions".tr,
                              style: CustomTextStyles.labelMediumff3b82f6,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_and".tr,
                              style: CustomTextStyles.labelMediumff979797,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_privacy_policy".tr,
                              style: CustomTextStyles.labelMediumff3b82f6,
                            ),
                            TextSpan(
                              text: "msg_your_data_will".tr,
                              style: CustomTextStyles.labelMediumff979797,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 53.v),
                    CustomElevatedButton(
                      onPressed: () async {
                        try {
                          // ...

                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: controller.emailController.text,
                            password: controller.passwordController.text,
                          )
                              .then((value) {
                            print("Logged into acc");
                            Get.toNamed(AppRoutes
                                .dashBoardContainerScreen); // Navigate to home screen
                          });
                        } catch (e) {
                          print(e);
                        }
                      },
                      width: 210.h,
                      text: "lbl_log_in".tr,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputFieldEmail() {
    return Padding(
      padding: EdgeInsets.only(left: 13.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.6,
            child: Text(
              "lbl_email_address".tr,
              style: CustomTextStyles.labelMediumGray30090,
            ),
          ),
          SizedBox(height: 10.v),
          CustomTextFormField(
            controller: controller.emailController,
            hintText: "msg_example_gmail_com".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputFieldPassword() {
    return Padding(
      padding: EdgeInsets.only(left: 13.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.6,
            child: Text(
              "lbl_password".tr,
              style: CustomTextStyles.labelMediumGray30090,
            ),
          ),
          SizedBox(height: 10.v),
          CustomTextFormField(
            controller: controller.passwordController,
            hintText: "lbl".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
