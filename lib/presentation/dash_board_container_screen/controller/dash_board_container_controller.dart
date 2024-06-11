import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/presentation/dash_board_container_screen/models/dash_board_container_model.dart';

/// A controller class for the DashBoardContainerScreen.
///
/// This class manages the state of the DashBoardContainerScreen, including the
/// current dashBoardContainerModelObj
class DashBoardContainerController extends GetxController {
  Rx<DashBoardContainerModel> dashBoardContainerModelObj =
      DashBoardContainerModel().obs;
}
