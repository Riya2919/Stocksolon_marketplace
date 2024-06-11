import 'controller/add_models_controller.dart';
import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/presentation/dash_board_page/dash_board_page.dart';
import 'package:admin_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:admin_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:admin_app/widgets/app_bar/custom_app_bar.dart';
import 'package:admin_app/widgets/custom_bottom_bar.dart';
import 'package:admin_app/widgets/custom_elevated_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddModelsScreen extends GetWidget<AddModelsController> {
  const AddModelsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                _buildStockSolonTwo(), // Logo stays at the top
                Expanded(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 32.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 28.h,
                              vertical: 29.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_upload_model".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                SizedBox(
                                  width: 135.h,
                                  child: Divider(
                                    color: theme.colorScheme.errorContainer,
                                    indent: 5.h,
                                  ),
                                ),
                                SizedBox(height: 27.v),
                                _buildInstructionView(),
                                SizedBox(height: 21.v),
                                _buildDragAndDropThe(),
                                SizedBox(height: 15.v),
                                CustomElevatedButton(
                                  width: 210.h,
                                  text: "lbl_upload_model".tr,
                                  buttonTextStyle: CustomTextStyles
                                      .titleMediumOnErrorContainer,
                                  alignment: Alignment.center,
                                ),
                                SizedBox(height: 28.v),
                                Text(
                                  "msg_our_platform_supports".tr,
                                  style: CustomTextStyles.titleMediumWhiteA700,
                                ),
                                SizedBox(height: 14.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.h,
                                    right: 95.h,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            height: 29.v,
                                            width: 143.h,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 9.h,
                                              vertical: 4.v,
                                            ),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgScreenshot2024,
                                              height: 21.v,
                                              width: 124.h,
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                          SizedBox(height: 10.v),
                                          Container(
                                            height: 29.v,
                                            width: 143.h,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 23.h,
                                              vertical: 2.v,
                                            ),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgScreenshot202421x89,
                                              height: 21.v,
                                              width: 89.h,
                                              alignment: Alignment.topLeft,
                                            ),
                                          ),
                                          SizedBox(height: 6.v),
                                          Container(
                                            height: 29.v,
                                            width: 143.h,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 42.h,
                                              vertical: 2.v,
                                            ),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgScreenshot202422x51,
                                              height: 22.v,
                                              width: 51.h,
                                              alignment: Alignment.topLeft,
                                            ),
                                          ),
                                          SizedBox(height: 8.v),
                                          Container(
                                            height: 29.v,
                                            width: 143.h,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 31.h,
                                              vertical: 2.v,
                                            ),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgScreenshot202421x80,
                                              height: 21.v,
                                              width: 80.h,
                                              alignment: Alignment.topCenter,
                                            ),
                                          ),
                                          SizedBox(height: 8.v),
                                          Container(
                                            height: 29.v,
                                            width: 143.h,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 42.h,
                                              vertical: 2.v,
                                            ),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgScreenshot202425x58,
                                              height: 25.v,
                                              width: 58.h,
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 11.h,
                                          top: 3.v,
                                          bottom: 19.v,
                                        ),
                                        child: Text(
                                          "lbl2".tr,
                                          style:
                                              CustomTextStyles.barlowWhiteA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.v),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _buildBottomBar(),
            ),
          ],
        ),
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
  Widget _buildInstructionView() {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 18.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "msg_instruction_view".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgInbox,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 14.h),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "lbl_view_guidelines".tr,
              style: CustomTextStyles.labelLargeErrorContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDragAndDropThe() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(right: 18.h),
        child: DottedBorder(
          color: appTheme.whiteA700,
          padding: EdgeInsets.only(
            left: 1.h,
            top: 1.v,
            right: 1.h,
            bottom: 1.v,
          ),
          strokeWidth: 1.h,
          radius: Radius.circular(10),
          borderType: BorderType.RRect,
          dashPattern: [
            4,
            4,
          ],
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 38.v,
            ),
            decoration: AppDecoration.outlineWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 12.v),
                Container(
                  height: 58.v,
                  width: 61.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUploadFill,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                SizedBox(height: 17.v),
                Text(
                  "msg_drag_and_drop_the".tr,
                  style: CustomTextStyles.labelLargeErrorContainer,
                ),
              ],
            ),
          ),
        ),
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
