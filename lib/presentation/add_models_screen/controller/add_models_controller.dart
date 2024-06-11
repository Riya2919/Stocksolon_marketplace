import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/presentation/add_models_screen/models/add_models_model.dart';

/// A controller class for the AddModelsScreen.
///
/// This class manages the state of the AddModelsScreen, including the
/// current addModelsModelObj
class AddModelsController extends GetxController {
  Rx<AddModelsModel> addModelsModelObj = AddModelsModel().obs;
}
