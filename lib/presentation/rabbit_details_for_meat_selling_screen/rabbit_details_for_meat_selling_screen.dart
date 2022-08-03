import 'controller/rabbit_details_for_meat_selling_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:grabbitapp/core/utils/validation_functions.dart';
import 'package:grabbitapp/widgets/custom_button.dart';
import 'package:grabbitapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RabbitDetailsForMeatSellingScreen
    extends GetWidget<RabbitDetailsForMeatSellingController> {
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
                                                    width: double.infinity,
                                                    decoration: AppDecoration
                                                        .fillAmber400,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapImgBack();
                                                                      },
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  13,
                                                                              right:
                                                                                  10),
                                                                          child: CommonImageView(
                                                                              imagePath: ImageConstant.imgBack,
                                                                              height: getVerticalSize(28.00),
                                                                              width: getHorizontalSize(48.00))))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 23,
                                                                      top: 1,
                                                                      right: 23,
                                                                      bottom:
                                                                          25),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(133.00),
                                                                            width: getHorizontalSize(146.00),
                                                                            child: Stack(alignment: Alignment.center, children: [
                                                                              Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(133.00), width: getHorizontalSize(146.00), decoration: BoxDecoration(color: ColorConstant.gray200, borderRadius: BorderRadius.circular(getHorizontalSize(73.00))))),
                                                                              Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 14, top: 29, right: 15, bottom: 29), child: CommonImageView(imagePath: ImageConstant.imgCalifornianrab, height: getVerticalSize(73.00), width: getHorizontalSize(116.00))))
                                                                            ])),
                                                                        CustomTextFormField(
                                                                            width:
                                                                                143,
                                                                            focusNode:
                                                                                FocusNode(),
                                                                            controller:
                                                                                controller.groupFiftyNineController1,
                                                                            hintText: "lbl_status".tr,
                                                                            margin: getMargin(top: 34, bottom: 66),
                                                                            variant: TextFormFieldVariant.OutlineBlack900,
                                                                            shape: TextFormFieldShape.RoundedBorder5,
                                                                            padding: TextFormFieldPadding.PaddingT8,
                                                                            fontStyle: TextFormFieldFontStyle.InterMedium15)
                                                                      ])))
                                                        ]))),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitIDController2,
                                                hintText:
                                                    "lbl_rabbit_number".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 29,
                                                    right: 23),
                                                shape: TextFormFieldShape
                                                    .RoundedBorder10,
                                                validator: (value) {
                                                  if (!isNumeric(value)) {
                                                    return "Please enter valid number";
                                                  }
                                                  return null;
                                                }),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitTypeController2,
                                                hintText: "lbl_rabbit_type".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 12,
                                                    right: 23),
                                                shape: TextFormFieldShape
                                                    .RoundedBorder10),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitBreedController2,
                                                hintText: "lbl_rabbit_breed".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 12,
                                                    right: 23),
                                                shape: TextFormFieldShape
                                                    .RoundedBorder10),
                                            Padding(
                                                padding: getPadding(
                                                    left: 23,
                                                    top: 12,
                                                    right: 23),
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
                                                                          .txtRoundedBorder10),
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
                                                              left: 9),
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 15,
                                                              bottom: 15),
                                                          decoration: AppDecoration
                                                              .txtOutlineBlack9001e
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .txtRoundedBorder10),
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
                                                      CustomButton(
                                                          width: 99,
                                                          text: "lbl_weight_kg"
                                                              .tr,
                                                          margin: getMargin(
                                                              left: 9),
                                                          variant: ButtonVariant
                                                              .OutlineBlack9001e,
                                                          shape: ButtonShape
                                                              .RoundedBorder10,
                                                          padding: ButtonPadding
                                                              .PaddingAll15,
                                                          fontStyle:
                                                              ButtonFontStyle
                                                                  .RobotoRegular14)
                                                    ])),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .dateofAcquisaController1,
                                                hintText:
                                                    "msg_date_of_acquisa".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 12,
                                                    right: 23),
                                                shape: TextFormFieldShape
                                                    .RoundedBorder10,
                                                textInputAction:
                                                    TextInputAction.done)
                                          ])))
                            ])))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.sellARabbitScreen);
  }
}
