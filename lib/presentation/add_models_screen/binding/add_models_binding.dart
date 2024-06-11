import '../controller/add_models_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddModelsScreen.
///
/// This class ensures that the AddModelsController is created when the
/// AddModelsScreen is first loaded.
class AddModelsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddModelsController());
  }
}
