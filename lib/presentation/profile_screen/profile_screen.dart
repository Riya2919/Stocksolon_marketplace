import 'package:firebase_auth/firebase_auth.dart';

import 'controller/profile_controller.dart';
import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/presentation/dash_board_page/dash_board_page.dart';
import 'package:admin_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:admin_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:admin_app/widgets/app_bar/custom_app_bar.dart';
import 'package:admin_app/widgets/custom_bottom_bar.dart';
import 'package:admin_app/widgets/custom_outlined_button.dart';
import 'package:admin_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            _buildStockSolonTwo(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: 390.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 27.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "msg_edit_user_details".tr,
                          style: CustomTextStyles.titleMediumRobotoWhiteA700,
                        ),
                      ),
                      SizedBox(height: 29.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          right: 72.h,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 58.v,
                              width: 65.h,
                              margin: EdgeInsets.only(bottom: 18.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.h,
                                vertical: 17.v,
                              ),
                              decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder29,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgIconJamIcons,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 58.h,
                                top: 9.v,
                              ),
                              child: Column(
                                children: [
                                  CustomOutlinedButton(
                                    width: 147.h,
                                    text: "lbl_upload_photo".tr,
                                  ),
                                  SizedBox(height: 10.v),
                                  Text(
                                    "lbl_remove".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildUserDetails(),
                      SizedBox(height: 32.v),
                      _buildUserDetails1(),
                      SizedBox(height: 45.v),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "lbl_settings".tr,
                          style: CustomTextStyles.titleLargeInter,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      SizedBox(height: 3.v),
                      _buildSettings(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildStockSolonTwo() {
    return SizedBox(
      height: 68.v,
      width: 325.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStocksolon1,
            height: 68.v,
            width: 83.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          CustomAppBar(
            height: 45.v,
            leadingWidth: 63.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgContrast,
              margin: EdgeInsets.only(
                left: 31.h,
                top: 3.v,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgBellPin,
                margin: EdgeInsets.only(
                  left: 37.h,
                  right: 37.h,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserDetails() {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 55.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_first_name".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 9.v),
          CustomTextFormField(
            controller: controller.firstNameController,
            hintText: "lbl_placeholder".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserDetails1() {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 55.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_last_name".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 9.v),
          CustomTextFormField(
            controller: controller.lastNameController,
            hintText: "lbl_placeholder".tr,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSettings() {
    return Container(
      margin: EdgeInsets.only(right: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      decoration: AppDecoration.outlineWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.v),
          Container(
            margin: EdgeInsets.only(left: 10.h),
            decoration: AppDecoration.outlineWhiteA7001,
            child: Column(
              children: [
                _buildFaq(
                  iconPengaturan: ImageConstant.imgIconPengaturan,
                  profilAkun: "lbl_security".tr,
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    await Get.offAllNamed(AppRoutes.loginScreen);
                  },
                ),
                SizedBox(height: 32.v),
                _buildFaq(
                  iconPengaturan:
                      ImageConstant.imgIconPengaturanOnsecondarycontainer,
                  profilAkun: "lbl_faq".tr,
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    await Get.offAllNamed(AppRoutes.loginScreen);
                  },
                ),
                SizedBox(height: 32.v),
                _buildFaq(
                  iconPengaturan: ImageConstant.imgSearch,
                  profilAkun: "lbl_live_support".tr,
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    await Get.offAllNamed(AppRoutes.loginScreen);
                  },
                ),
                SizedBox(height: 32.v),
                _buildFaq(
                  iconPengaturan: ImageConstant.imgThumbsUpPrimarycontainer,
                  profilAkun: "lbl_log_out".tr,
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    await Get.offAllNamed(AppRoutes.loginScreen);
                  },
                ),
                SizedBox(height: 16.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFaq({
    required String iconPengaturan,
    required String profilAkun,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed, // Call the onPressed callback when tapped
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: iconPengaturan,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Text(
              profilAkun,
              style:
                  CustomTextStyles.titleSmallInterOnSecondaryContainer.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) async {
      await _navigateToRoute(type);
    });
  }

  Future<void> _navigateToRoute(BottomBarEnum type) async {
    switch (type) {
      case BottomBarEnum.Home:
        await Get.toNamed(AppRoutes.dashBoardContainerScreen);
        break;
      case BottomBarEnum.Addmodel:
        await Get.toNamed(AppRoutes.addModelsScreen);
        break;
      case BottomBarEnum.Insights:
        await Get.toNamed(AppRoutes.insightsScreen);
        break;
      case BottomBarEnum.Profile:
        await Get.toNamed(AppRoutes.profileScreen);
        break;
      default:
        await Get.toNamed(AppRoutes.dashBoardPage);
        break;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashBoardPage:
        return DashBoardPage();
      default:
        return DefaultWidget();
    }
  }
}
