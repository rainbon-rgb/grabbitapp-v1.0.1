import '/core/app_export.dart';
import 'package:grabbitapp/presentation/check_rabbits_screen/models/check_rabbits_model.dart';

class CheckRabbitsController extends GetxController {
  Rx<CheckRabbitsModel> checkRabbitsModelObj = CheckRabbitsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
