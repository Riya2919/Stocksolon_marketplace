import 'controller/insights_controller.dart';
import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/presentation/dash_board_page/dash_board_page.dart';
import 'package:admin_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:admin_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:admin_app/widgets/app_bar/custom_app_bar.dart';
import 'package:admin_app/widgets/custom_bottom_bar.dart';
import 'package:admin_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InsightsScreen extends GetWidget<InsightsController> {
  const InsightsScreen({Key? key})
      : super(
          key: key,
        );

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
                    horizontal: 13.h,
                    vertical: 24.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Text(
                          "lbl_it_s_insightful".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      SizedBox(
                        width: 147.h,
                        child: Divider(
                          color: theme.colorScheme.errorContainer,
                          indent: 17.h,
                        ),
                      ),
                      SizedBox(height: 27.v),
                      _buildHeaderRow(),
                      SizedBox(height: 27.v),
                      _buildProjectColumn(),
                      SizedBox(height: 25.v),
                      _buildProjectColumn1(),
                      SizedBox(height: 2.v),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 3.h),
          child: _buildBottomBar(),
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
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 35.h,
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
  Widget _buildProjectColumn() {
    return Container(
      width: 358.h,
      margin: EdgeInsets.only(
        left: 3.h,
        right: 6.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_your_models_listed".tr,
            style: CustomTextStyles.titleLargeBeVietnamProGray900,
          ),
          SizedBox(height: 10.v),
          CustomImageView(
            imagePath: ImageConstant.imgPeopleWorking,
            height: 35.v,
            width: 256.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProjectColumn1() {
    return Container(
      margin: EdgeInsets.only(right: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "lbl_orders".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 1.h,
            ),
            child: Row(
              children: [
                CustomIconButton(
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.outlineSecondaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 11.v,
                    bottom: 6.v,
                  ),
                  child: _buildTransactionColumn(
                    transactionName: "lbl_model_abc".tr,
                    buyerName: "lbl_buyer_xyz".tr,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.v),
                  child: Column(
                    children: [
                      Text(
                        "lbl_53_95".tr,
                        style: CustomTextStyles.titleMediumRobotoGreen900,
                      ),
                      SizedBox(height: 1.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_date".tr,
                          style: CustomTextStyles.labelMediumRobotoBluegray400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 1.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration:
                      IconButtonStyleHelper.outlineSecondaryContainerTL27,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 7.v,
                    bottom: 11.v,
                  ),
                  child: _buildTransactionColumn(
                    transactionName: "lbl_model_pqr".tr,
                    buyerName: "lbl_buyer_xyz".tr,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 11.v,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "lbl_2500_95".tr,
                        style: CustomTextStyles.titleMediumRobotoGreen900,
                      ),
                      SizedBox(height: 3.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_date".tr,
                          style: CustomTextStyles.labelMediumRobotoBluegray400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomIconButton(
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration:
                      IconButtonStyleHelper.outlineSecondaryContainerTL271,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 11.v,
                    bottom: 5.v,
                  ),
                  child: _buildTransactionColumn(
                    transactionName: "lbl_model_abc".tr,
                    buyerName: "lbl_buyer_xyz".tr,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 11.v,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_5_42".tr,
                        style: CustomTextStyles.titleMediumRobotoGreen900,
                      ),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_date".tr,
                          style: CustomTextStyles.labelMediumRobotoBluegray400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 1.h,
            ),
            child: Row(
              children: [
                CustomIconButton(
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration:
                      IconButtonStyleHelper.outlineSecondaryContainerTL272,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 13.v,
                    bottom: 4.v,
                  ),
                  child: _buildTransactionColumn(
                    transactionName: "lbl_model_pqr".tr,
                    buyerName: "lbl_buyer_xyz".tr,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.v),
                  child: Column(
                    children: [
                      Text(
                        "lbl_445_00".tr,
                        style: CustomTextStyles.titleMediumRobotoGreen900,
                      ),
                      SizedBox(height: 1.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_date".tr,
                          style: CustomTextStyles.labelMediumRobotoBluegray400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTransactionColumn({
    required String transactionName,
    required String buyerName,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          transactionName,
          style: CustomTextStyles.titleMediumRobotoGray900dd.copyWith(
            color: appTheme.gray900Dd,
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          buyerName,
          style: CustomTextStyles.labelMediumRobotoBluegray400.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
      ],
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
