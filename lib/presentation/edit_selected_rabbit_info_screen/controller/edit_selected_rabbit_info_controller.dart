import '/core/app_export.dart';
import 'package:grabbitapp/presentation/edit_selected_rabbit_info_screen/models/edit_selected_rabbit_info_model.dart';
import 'package:flutter/material.dart';

class EditSelectedRabbitInfoController extends GetxController {
  TextEditingController groupFiftyNineController = TextEditingController();

  TextEditingController rabbitIDController1 = TextEditingController();

  TextEditingController rabbitTypeController1 = TextEditingController();

  TextEditingController rabbitBreedController1 = TextEditingController();

  TextEditingController dOPController = TextEditingController();

  Rx<EditSelectedRabbitInfoModel> editSelectedRabbitInfoModelObj =
      EditSelectedRabbitInfoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyNineController.dispose();
    rabbitIDController1.dispose();
    rabbitTypeController1.dispose();
    rabbitBreedController1.dispose();
    dOPController.dispose();
  }
}
