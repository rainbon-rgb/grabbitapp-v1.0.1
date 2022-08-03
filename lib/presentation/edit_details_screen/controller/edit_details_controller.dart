import '/core/app_export.dart';
import 'package:grabbitapp/presentation/edit_details_screen/models/edit_details_model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grabbitapp/firebase/models/models.dart';

class EditDetailsController extends GetxController {
  TextEditingController rabbitIDController = TextEditingController();

  TextEditingController rabbitTypeController = TextEditingController();

  TextEditingController rabbitBreedController = TextEditingController();

  TextEditingController weightkgController = TextEditingController();

  TextEditingController dateofAcquisaController = TextEditingController();

  Rx<EditDetailsModel> editDetailsModelObj = EditDetailsModel().obs;

  FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  RabbitProfile rabbitProfileModelObj = RabbitProfile();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    rabbitIDController.dispose();
    rabbitTypeController.dispose();
    rabbitBreedController.dispose();
    weightkgController.dispose();
    dateofAcquisaController.dispose();
  }

  addRabbitProfileDocument(Map<String, dynamic> model) {
    firestoreInstance.collection("rabbitProfile").add(model).then((value) {
      onAddRabbitProfileSuccess();
    }).catchError((error) {
      print(error);
      onAddRabbitProfileError();
    });
  }

  onAddRabbitProfileSuccess() {
    Get.offNamed(AppRoutes.qrCodeGenerationScreen);
  }

  onAddRabbitProfileError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "Check Rabbitt Details");
  }
}
