import 'controller/edit_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:grabbitapp/core/utils/validation_functions.dart';
import 'package:grabbitapp/widgets/custom_button.dart';
import 'package:grabbitapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditDetailsScreen extends GetWidget<EditDetailsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                      margin: getMargin(bottom: 10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(177.00),
                                                    width: size.width,
                                                    decoration: AppDecoration
                                                        .fillAmber400,
                                                    child: Stack(children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 22,
                                                                      top: 20,
                                                                      right: 22,
                                                                      bottom:
                                                                          20),
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              13.00)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .img11,
                                                                      height: getVerticalSize(
                                                                          112.00),
                                                                      width: getHorizontalSize(
                                                                          144.00)))))
                                                    ]))),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitIDController,
                                                hintText:
                                                    "lbl_rabbit_ID".tr,
                                                margin: getMargin(
                                                    left: 25,
                                                    top: 12,
                                                    right: 24),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isNumeric(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid number";
                                                  }
                                                  return null;
                                                }),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitTypeController,
                                                hintText: "lbl_rabbit_type".tr,
                                                margin: getMargin(
                                                    left: 25,
                                                    top: 12,
                                                    right: 24),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isText(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid text";
                                                  }
                                                  return null;
                                                }),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitBreedController,
                                                hintText: "lbl_rabbit_breed".tr,
                                                margin: getMargin(
                                                    left: 25,
                                                    top: 12,
                                                    right: 24),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isText(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid text";
                                                  }
                                                  return null;
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25,
                                                    top: 12,
                                                    right: 24),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  99.00),
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 15,
                                                              bottom: 15),
                                                          decoration: AppDecoration
                                                              .txtOutlineBlack9001e
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .txtRoundedBorder15),
                                                          child: Text(
                                                              "lbl_height_in"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height:
                                                                          1.43))),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  98.00),
                                                          margin: getMargin(
                                                              left: 7),
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 15,
                                                              bottom: 15),
                                                          decoration: AppDecoration
                                                              .txtOutlineBlack9001e
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .txtRoundedBorder15),
                                                          child: Text(
                                                              "lbl_width_in".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height:
                                                                          1.43))),
                                                      CustomTextFormField(
                                                          width: 99,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .weightkgController,
                                                          hintText:
                                                              "lbl_weight".tr,
                                                          margin: getMargin(
                                                              left: 8))
                                                    ])),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .dateofAcquisaController,
                                                hintText:
                                                    "msg_date_of_acquisa".tr,
                                                margin: getMargin(
                                                    left: 25,
                                                    top: 12,
                                                    right: 24),
                                                textInputAction:
                                                    TextInputAction.done),
                                            CustomButton(
                                                width: 267,
                                                text: "lbl_save".tr,
                                                margin: getMargin(
                                                    left: 25,
                                                    top: 190,
                                                    right: 25),
                                                onTap: onTapBtnSave)
                                          ])))
                            ])))))));
  }

  onTapBtnSave() {
    Map<String, dynamic> rabbitProfileModel = {
      'RabbitID': controller.rabbitIDController.text,
      'RabbitType': controller.rabbitTypeController.text,
      'RabbitBreed': controller.rabbitBreedController.text,
      'Weight': controller.weightkgController.text,
      'DateofPurchase': controller.dateofAcquisaController.text,
    };
    controller.addRabbitProfileDocument(rabbitProfileModel);
  }
}
