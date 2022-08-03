import 'package:grabbitapp/presentation/edit_details_screen/edit_details_screen.dart';
import 'package:grabbitapp/presentation/edit_details_screen/binding/edit_details_binding.dart';
import 'package:grabbitapp/presentation/homepage_screen/homepage_screen.dart';
import 'package:grabbitapp/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:grabbitapp/presentation/qr_code_generation_screen/qr_code_generation_screen.dart';
import 'package:grabbitapp/presentation/qr_code_generation_screen/binding/qr_code_generation_binding.dart';
import 'package:grabbitapp/presentation/scan_screen/scan_screen.dart';
import 'package:grabbitapp/presentation/scan_screen/binding/scan_binding.dart';
import 'package:grabbitapp/presentation/scan_qr_screen/scan_qr_screen.dart';
import 'package:grabbitapp/presentation/scan_qr_screen/binding/scan_qr_binding.dart';
import 'package:grabbitapp/presentation/edit_selected_rabbit_info_screen/edit_selected_rabbit_info_screen.dart';
import 'package:grabbitapp/presentation/edit_selected_rabbit_info_screen/binding/edit_selected_rabbit_info_binding.dart';
import 'package:grabbitapp/presentation/sell_a_rabbit_screen/sell_a_rabbit_screen.dart';
import 'package:grabbitapp/presentation/sell_a_rabbit_screen/binding/sell_a_rabbit_binding.dart';
import 'package:grabbitapp/presentation/check_rabbits_screen/check_rabbits_screen.dart';
import 'package:grabbitapp/presentation/check_rabbits_screen/binding/check_rabbits_binding.dart';
import 'package:grabbitapp/presentation/welcome_screen/welcome_screen.dart';
import 'package:grabbitapp/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:grabbitapp/presentation/rabbit_generated_info_screen/rabbit_generated_info_screen.dart';
import 'package:grabbitapp/presentation/rabbit_generated_info_screen/binding/rabbit_generated_info_binding.dart';
import 'package:grabbitapp/presentation/rabbit_details_for_meat_selling_screen/rabbit_details_for_meat_selling_screen.dart';
import 'package:grabbitapp/presentation/rabbit_details_for_meat_selling_screen/binding/rabbit_details_for_meat_selling_binding.dart';
import 'package:grabbitapp/presentation/selected_rabbit_screen/selected_rabbit_screen.dart';
import 'package:grabbitapp/presentation/selected_rabbit_screen/binding/selected_rabbit_binding.dart';
import 'package:grabbitapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:grabbitapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String editDetailsScreen = '/edit_details_screen';

  static String homepageScreen = '/homepage_screen';

  static String qrCodeGenerationScreen = '/qr_code_generation_screen';

  static String scanScreen = '/scan_screen';

  static String scanQrScreen = '/scan_qr_screen';

  static String editSelectedRabbitInfoScreen =
      '/edit_selected_rabbit_info_screen';

  static String sellARabbitScreen = '/sell_a_rabbit_screen';

  static String checkRabbitsScreen = '/check_rabbits_screen';

  static String welcomeScreen = '/welcome_screen';

  static String rabbitGeneratedInfoScreen = '/rabbit_generated_info_screen';

  static String rabbitDetailsForMeatSellingScreen =
      '/rabbit_details_for_meat_selling_screen';

  static String selectedRabbitScreen = '/selected_rabbit_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: editDetailsScreen,
      page: () => EditDetailsScreen(),
      bindings: [
        EditDetailsBinding(),
      ],
    ),
    GetPage(
      name: homepageScreen,
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
      ],
    ),
    GetPage(
      name: qrCodeGenerationScreen,
      page: () => QrCodeGenerationScreen(),
      bindings: [
        QrCodeGenerationBinding(),
      ],
    ),
    GetPage(
      name: scanScreen,
      page: () => ScanScreen(),
      bindings: [
        ScanBinding(),
      ],
    ),
    GetPage(
      name: scanQrScreen,
      page: () => ScanQrScreen(),
      bindings: [
        ScanQrBinding(),
      ],
    ),
    GetPage(
      name: editSelectedRabbitInfoScreen,
      page: () => EditSelectedRabbitInfoScreen(),
      bindings: [
        EditSelectedRabbitInfoBinding(),
      ],
    ),
    GetPage(
      name: sellARabbitScreen,
      page: () => SellARabbitScreen(),
      bindings: [
        SellARabbitBinding(),
      ],
    ),
    GetPage(
      name: checkRabbitsScreen,
      page: () => CheckRabbitsScreen(),
      bindings: [
        CheckRabbitsBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: rabbitGeneratedInfoScreen,
      page: () => RabbitGeneratedInfoScreen(),
      bindings: [
        RabbitGeneratedInfoBinding(),
      ],
    ),
    GetPage(
      name: rabbitDetailsForMeatSellingScreen,
      page: () => RabbitDetailsForMeatSellingScreen(),
      bindings: [
        RabbitDetailsForMeatSellingBinding(),
      ],
    ),
    GetPage(
      name: selectedRabbitScreen,
      page: () => SelectedRabbitScreen(),
      bindings: [
        SelectedRabbitBinding(),
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
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    )
  ];
}
