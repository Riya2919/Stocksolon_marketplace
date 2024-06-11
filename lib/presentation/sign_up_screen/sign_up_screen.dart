import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'controller/sign_up_controller.dart';
import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/core/utils/validation_functions.dart';
import 'package:admin_app/widgets/custom_elevated_button.dart';
import 'package:admin_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
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
              //key: _formKey,
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
                    _buildInputFieldName(),
                    SizedBox(height: 24.v),
                    _buildInputFieldEmail(),
                    SizedBox(height: 24.v),
                    _buildInputFieldPassword(),
                    SizedBox(height: 25.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_have_an_account2".tr,
                            style: CustomTextStyles.labelLargeffffffff,
                          ),
                          TextSpan(
                            text: "lbl_log_in_here".tr,
                            style: CustomTextStyles.labelLargeff0091ff,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(AppRoutes.loginScreen);
                              },
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 44.v),
                    Container(
                      width: 354.h,
                      margin: EdgeInsets.only(left: 15.h),
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
                        // Handle sign-up failure
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: controller.emailController.text,
                                password: controller.passwordController.text)
                            .then((value) => Get.toNamed(AppRoutes.loginScreen))
                            .onError((error, stackTrace) {
                          print("Erros ${error.toString()}");
                        });
                      },
                      width: 210.h,
                      text: "lbl_sign_up2".tr,
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

  Widget _buildInputFieldName() {
    return Padding(
      padding: EdgeInsets.only(left: 13.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.6,
            child: Text(
              "User Name",
              style: CustomTextStyles.labelMediumGray30090,
            ),
          ),
          SizedBox(height: 10.v),
          CustomTextFormField(
            controller: controller.NameController,
            hintText: "Enter Name",
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }

  void signIn(
      String email, String password, String username, BuildContext ctx) async {
    try {
      // if (!_formKey.currentState!.validate()) {
      //   return;
      // }

      UserCredential authResult;
      var existingUser = await FirebaseFirestore.instance
          .collection('users')
          .where(
            'email',
            isEqualTo: email,
          )
          .get();

      if (existingUser.docs.isNotEmpty) {
        ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(
            content: Text('Account already exists'),
            duration: Duration(seconds: 3),
          ),
        );
        return;
      }

      authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      await FirebaseFirestore.instance
          .collection('users')
          .doc(authResult.user?.uid)
          ?.set({
        'username': username,
        'role': 'model seller',
        'email': email,
        'password': password,
      });

      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          content: Text('Authentication successful'),
          duration: Duration(seconds: 3),
        ),
      );
      Get.toNamed(AppRoutes.loginScreen);
    } on FirebaseAuthException catch (err) {
      if (err.code == 'wrong-password') {
        ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(
            content: Text('Wrong password. Please try again.'),
            duration: Duration(seconds: 3),
          ),
        );
      } else if (err.message != null) {
        ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(
            content: Text(err.message!),
            duration: Duration(seconds: 3),
          ),
        );
      }
    } catch (err) {
      print(err);
    }
  }

  void onPressedSignUp(BuildContext context) async {
    String email = controller.emailController.text;
    String password = controller.passwordController.text;
    String username = controller.NameController.text;

    signIn(email, password, username, context);
  }
}
