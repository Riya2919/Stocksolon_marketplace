import 'controller/dash_board_container_controller.dart';
import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/presentation/dash_board_page/dash_board_page.dart';
import 'package:admin_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class DashBoardContainerScreen extends GetWidget<DashBoardContainerController> {
  const DashBoardContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.dashBoardPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(right: 3.h),
                child: _buildBottomBar())));
  }

  /// Section Widget
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
