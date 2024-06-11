import 'controller/dash_board_controller.dart';
import 'models/dash_board_model.dart';
import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:admin_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:admin_app/widgets/app_bar/custom_app_bar.dart';
import 'package:admin_app/widgets/custom_elevated_button.dart';
import 'package:admin_app/widgets/custom_icon_button.dart';
import 'package:admin_app/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DashBoardPage extends StatelessWidget {
  DashBoardPage({Key? key})
      : super(
          key: key,
        );

  DashBoardController controller =
      Get.put(DashBoardController(DashBoardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _buildStockSolonTwo(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 32.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_hello_users".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "msg_see_how_your_work".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      SizedBox(height: 35.v),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "lbl_overview".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(
                                  width: 60.h,
                                  height: 3.h,
                                  child: Container(
                                    height:
                                        2.0, // Adjust the height according to your preference for a bolder line
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme
                                          .errorContainer, // Set the color of the border
                                      borderRadius: BorderRadius.circular(
                                          2.5), // Make it circular
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 28.h,
                                bottom: 12.v,
                              ),
                              child: Text(
                                "lbl_favorites".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Divider(
                          thickness: 2,
                          color: appTheme.gray500,
                          indent: 10.h,
                          endIndent: 10.h,
                        ),
                      ),
                      SizedBox(height: 25.v),
                      _buildHeaderRow(),
                      SizedBox(height: 35.v),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 7.h),
                        padding: EdgeInsets.all(1.h),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL25,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 7.v),
                            _buildThirtyTwo(),
                            SizedBox(height: 5.v),
                            Divider(
                              color: appTheme.black900,
                              indent: 33.h,
                              endIndent: 12.h,
                            ),
                            SizedBox(height: 15.v),
                            _buildEighty(),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Divider(
                                color: appTheme.black900,
                                indent: 33.h,
                                endIndent: 15.h,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 56.h,
                                right: 48.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_23".tr,
                                    style: CustomTextStyles.labelMediumBlack900,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30.h),
                                    child: Text(
                                      "lbl_24".tr,
                                      style:
                                          CustomTextStyles.labelMediumBlack900,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 26.h),
                                    child: Text(
                                      "lbl_25".tr,
                                      style:
                                          CustomTextStyles.labelMediumBlack900,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 26.h),
                                    child: Text(
                                      "lbl_25".tr,
                                      style:
                                          CustomTextStyles.labelMediumBlack900,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 49,
                                  ),
                                  Text(
                                    "lbl_26".tr,
                                    style: CustomTextStyles.labelMediumBlack900,
                                  ),
                                  Spacer(
                                    flex: 50,
                                  ),
                                  Text(
                                    "lbl_27".tr,
                                    style: CustomTextStyles.labelMediumBlack900,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30.h),
                                    child: Text(
                                      "lbl_28".tr,
                                      style:
                                          CustomTextStyles.labelMediumBlack900,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30.h),
                                    child: Text(
                                      "lbl_29".tr,
                                      style:
                                          CustomTextStyles.labelMediumBlack900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_29_jan".tr,
                              style: CustomTextStyles.labelLargeBlack900,
                            ),
                            SizedBox(height: 10.v),
                            Divider(
                              color: appTheme.black900,
                              indent: 15.h,
                              endIndent: 7.h,
                            ),
                            SizedBox(height: 19.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 33.h,
                                  right: 79.h,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 85.h,
                                      child: Text(
                                        "msg_6_50_0000_gross".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.labelLarge!
                                            .copyWith(
                                          height: 1.55,
                                        ),
                                      ),
                                    ),
                                    Spacer(
                                      flex: 60,
                                    ),
                                    SizedBox(
                                      height: 59.v,
                                      child: VerticalDivider(
                                        width: 1.h,
                                        thickness: 1.v,
                                        color: appTheme.black900,
                                        endIndent: 13.h,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 39,
                                    ),
                                    Container(
                                      width: 69.h,
                                      margin: EdgeInsets.only(top: 2.v),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_100".tr,
                                              style: CustomTextStyles
                                                  .titleMediumff000000,
                                            ),
                                            TextSpan(
                                              text: "lbl_models_sold".tr,
                                              style: CustomTextStyles
                                                  .labelLargeff000000,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
  Widget _buildHeaderRow() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 19.h,
          right: 29.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              height: 30.v,
              width: 80.h,
              text: "lbl_sales".tr,
              margin: EdgeInsets.only(top: 1.v),
              leftIcon: Container(
                margin: EdgeInsets.only(right: 5.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgThumbsup,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              buttonStyle: CustomButtonStyles.fillWhiteA,
              buttonTextStyle: theme.textTheme.labelLarge!,
            ),
            CustomElevatedButton(
              height: 30.v,
              width: 106.h,
              text: "lbl_payments".tr,
              margin: EdgeInsets.only(
                left: 29.h,
                top: 1.v,
              ),
              leftIcon: Container(
                margin: EdgeInsets.only(right: 7.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              buttonStyle: CustomButtonStyles.fillWhiteA,
              buttonTextStyle: theme.textTheme.labelLarge!,
            ),
            Spacer(),
            CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(5.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyTwo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsup,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Container(
            height: 24.v,
            width: 280.h,
            margin: EdgeInsets.only(
              left: 0.h,
              right: 6.h,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 110.h),
                          child: Container(
                            width: 120.0,
                            child: Text(
                              "msg_updated_at_6_56".tr,
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        CustomRadioButton(
                          value: controller
                              .dashBoardModelObj.value.radioList.value[1],
                          groupValue: controller.radioGroup.value,
                          padding: EdgeInsets.symmetric(vertical: 3.v),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSignal,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 31.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEighty() {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 22.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_1_5_cr".tr,
                  style: CustomTextStyles.labelMediumBlack900,
                ),
                SizedBox(height: 15.v),
                Text(
                  "lbl_1_25_cr".tr,
                  style: CustomTextStyles.labelMediumBlack900,
                ),
                SizedBox(height: 17.v),
                Text(
                  "lbl_1_cr".tr,
                  style: CustomTextStyles.labelMediumBlack900,
                ),
                SizedBox(height: 16.v),
                Text(
                  "lbl_75_l".tr,
                  style: CustomTextStyles.labelMediumBlack900,
                ),
                SizedBox(height: 15.v),
                Text(
                  "lbl_50_l".tr,
                  style: CustomTextStyles.labelMediumBlack900,
                ),
                SizedBox(height: 14.v),
                Text(
                  "lbl_25_l".tr,
                  style: CustomTextStyles.labelMediumBlack900,
                ),
              ],
            ),
          ),
          Container(
            height: 190.v,
            width: 314.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 190.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 53.v),
                    child: SizedBox(
                      width: 312.h,
                      child: Divider(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 84.v),
                    child: SizedBox(
                      width: 312.h,
                      child: Divider(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 25.v),
                    child: SizedBox(
                      width: 312.h,
                      child: Divider(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 75.v),
                    child: SizedBox(
                      width: 312.h,
                      child: Divider(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 15.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 0.v),
                        Divider(),
                        SizedBox(height: 30.v),
                        Divider(),
                        SizedBox(height: 15.v),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 65.v,
                          width: 23.h,
                          margin: EdgeInsets.only(top: 125.v),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray30001,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(5.h),
                            ),
                          ),
                        ),
                        Container(
                          height: 114.v,
                          width: 23.h,
                          margin: EdgeInsets.only(
                            left: 15.h,
                            top: 55.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray500,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(5.h),
                            ),
                          ),
                        ),
                        Container(
                          height: 169.v,
                          width: 23.h,
                          margin: EdgeInsets.only(left: 17.h),
                          decoration: BoxDecoration(
                            color: appTheme.indigo400,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(5.h),
                            ),
                          ),
                        ),
                        Container(
                          height: 114.v,
                          width: 23.h,
                          margin: EdgeInsets.only(
                            left: 17.h,
                            top: 55.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray500,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(5.h),
                            ),
                          ),
                        ),
                        Container(
                          height: 65.v,
                          width: 23.h,
                          margin: EdgeInsets.only(
                            left: 17.h,
                            top: 104.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray30001,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(5.h),
                            ),
                          ),
                        ),
                        Container(
                          height: 169.v,
                          width: 23.h,
                          margin: EdgeInsets.only(left: 17.h),
                          decoration: BoxDecoration(
                            color: appTheme.indigo400,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(5.h),
                            ),
                          ),
                        ),
                        Container(
                          height: 65.v,
                          width: 23.h,
                          margin: EdgeInsets.only(
                            left: 17.h,
                            top: 104.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.lime800,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(5.h),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
