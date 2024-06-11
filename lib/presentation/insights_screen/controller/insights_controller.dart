import 'package:admin_app/core/app_export.dart';
import 'package:admin_app/presentation/insights_screen/models/insights_model.dart';

/// A controller class for the InsightsScreen.
///
/// This class manages the state of the InsightsScreen, including the
/// current insightsModelObj
class InsightsController extends GetxController {
  Rx<InsightsModel> insightsModelObj = InsightsModel().obs;
}
