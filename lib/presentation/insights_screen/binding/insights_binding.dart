import '../controller/insights_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InsightsScreen.
///
/// This class ensures that the InsightsController is created when the
/// InsightsScreen is first loaded.
class InsightsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InsightsController());
  }
}
