import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController NameController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel(uid: '').obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    NameController.dispose();
  }
}
