import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/presentation/dash_board_page/models/dash_board_model.dart';

/// A controller class for the DashBoardPage.
///
/// This class manages the state of the DashBoardPage, including the
/// current dashBoardModelObj
class DashBoardController extends GetxController {
  DashBoardController(this.dashBoardModelObj);

  Rx<DashBoardModel> dashBoardModelObj;

  Rx<String> radioGroup = "".obs;
}
