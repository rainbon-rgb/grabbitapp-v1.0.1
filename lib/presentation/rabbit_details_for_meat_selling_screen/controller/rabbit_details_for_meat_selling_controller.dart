import '/core/app_export.dart';
import 'package:grabbitapp/presentation/rabbit_details_for_meat_selling_screen/models/rabbit_details_for_meat_selling_model.dart';
import 'package:flutter/material.dart';

class RabbitDetailsForMeatSellingController extends GetxController {
  TextEditingController groupFiftyNineController1 = TextEditingController();

  TextEditingController rabbitIDController2 = TextEditingController();

  TextEditingController rabbitTypeController2 = TextEditingController();

  TextEditingController rabbitBreedController2 = TextEditingController();

  TextEditingController dateofAcquisaController1 = TextEditingController();

  Rx<RabbitDetailsForMeatSellingModel> rabbitDetailsForMeatSellingModelObj =
      RabbitDetailsForMeatSellingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyNineController1.dispose();
    rabbitIDController2.dispose();
    rabbitTypeController2.dispose();
    rabbitBreedController2.dispose();
    dateofAcquisaController1.dispose();
  }
}
