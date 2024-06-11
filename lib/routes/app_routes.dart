import 'package:admin_app/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:admin_app/presentation/splashscreen_screen/binding/splashscreen_binding.dart';
import 'package:admin_app/presentation/login_screen/login_screen.dart';
import 'package:admin_app/presentation/login_screen/binding/login_binding.dart';
import 'package:admin_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:admin_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:admin_app/presentation/dash_board_container_screen/dash_board_container_screen.dart';
import 'package:admin_app/presentation/dash_board_container_screen/binding/dash_board_container_binding.dart';
import 'package:admin_app/presentation/add_models_screen/add_models_screen.dart';
import 'package:admin_app/presentation/add_models_screen/binding/add_models_binding.dart';
import 'package:admin_app/presentation/insights_screen/insights_screen.dart';
import 'package:admin_app/presentation/insights_screen/binding/insights_binding.dart';
import 'package:admin_app/presentation/profile_screen/profile_screen.dart';
import 'package:admin_app/presentation/profile_screen/binding/profile_binding.dart';
import 'package:admin_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:admin_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String dashBoardPage = '/dash_board_page';

  static const String dashBoardContainerScreen = '/dash_board_container_screen';

  static const String addModelsScreen = '/add_models_screen';

  static const String insightsScreen = '/insights_screen';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashscreenScreen,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: dashBoardContainerScreen,
      page: () => DashBoardContainerScreen(),
      bindings: [
        DashBoardContainerBinding(),
      ],
    ),
    GetPage(
      name: addModelsScreen,
      page: () => AddModelsScreen(),
      bindings: [
        AddModelsBinding(),
      ],
    ),
    GetPage(
      name: insightsScreen,
      page: () => InsightsScreen(),
      bindings: [
        InsightsBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    )
  ];
}
