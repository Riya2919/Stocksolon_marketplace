import '../controller/dash_board_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashBoardContainerScreen.
///
/// This class ensures that the DashBoardContainerController is created when the
/// DashBoardContainerScreen is first loaded.
class DashBoardContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashBoardContainerController());
  }
}
