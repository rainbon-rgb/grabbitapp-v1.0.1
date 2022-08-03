import 'controller/selected_rabbit_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:grabbitapp/widgets/custom_button.dart';
import 'package:grabbitapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SelectedRabbitScreen extends GetWidget<SelectedRabbitController> {
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
                                                        getVerticalSize(53.00),
                                                    width: size.width,
                                                    decoration: AppDecoration
                                                        .fillAmber400,
                                                    child: Stack(children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child:
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapImgBack();
                                                                  },
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              7,
                                                                          right:
                                                                              10,
                                                                          bottom:
                                                                              10),
                                                                      child: CommonImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgBack,
                                                                          height: getVerticalSize(
                                                                              35.00),
                                                                          width:
                                                                              getHorizontalSize(48.00)))))
                                                    ]))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 22,
                                                    top: 20,
                                                    right: 22),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      13.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .img11,
                                                              height:
                                                                  getVerticalSize(
                                                                      112.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      144.00))),
                                                      CustomTextFormField(
                                                          width: 143,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .statusController,
                                                          hintText:
                                                              "lbl_status".tr,
                                                          margin: getMargin(
                                                              top: 23,
                                                              bottom: 56),
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .FillAmber400,
                                                          shape:
                                                              TextFormFieldShape
                                                                  .RoundedBorder5,
                                                          padding:
                                                              TextFormFieldPadding
                                                                  .PaddingT8,
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .InterMedium15)
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 22,
                                                    top: 44,
                                                    right: 22),
                                                child: Autocomplete<
                                                        SelectionPopupModel>(
                                                    optionsBuilder:
                                                        (TextEditingValue
                                                            textEditingValue) {
                                                      if (textEditingValue
                                                          .text.isEmpty) {
                                                        return const Iterable<
                                                            SelectionPopupModel>.empty();
                                                      }
                                                      return controller
                                                          .autoCompleteItemList
                                                          .where(
                                                              (SelectionPopupModel
                                                                  itemValue) {
                                                        return itemValue.title
                                                            .toLowerCase()
                                                            .startsWith(
                                                                textEditingValue
                                                                    .text
                                                                    .toLowerCase());
                                                      }).toList();
                                                    },
                                                    fieldViewBuilder: (BuildContext
                                                            context,
                                                        TextEditingController
                                                            fieldTextEditingController,
                                                        FocusNode
                                                            fieldFocusNode,
                                                        VoidCallback
                                                            onFieldSubmitted) {
                                                      return Container(
                                                          width: getHorizontalSize(
                                                              311.00),
                                                          child: TextFormField(
                                                              controller:
                                                                  fieldTextEditingController,
                                                              focusNode:
                                                                  fieldFocusNode,
                                                              decoration: InputDecoration(
                                                                  hintText:
                                                                      "lbl_rabbit_number"
                                                                          .tr,
                                                                  hintStyle: TextStyle(
                                                                      color: ColorConstant
                                                                          .black90060,
                                                                      fontSize: getFontSize(
                                                                          14),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight: FontWeight
                                                                          .w400,
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height:
                                                                          1.43),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                          15.00)),
                                                                      borderSide: BorderSide(
                                                                          color: ColorConstant
                                                                              .black9001e,
                                                                          width:
                                                                              1)),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                                  disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.00)), borderSide: BorderSide(color: ColorConstant.black9001e, width: 1)),
                                                                  isDense: true,
                                                                  contentPadding: getPadding(left: 10, top: 15, right: 30, bottom: 15)),
                                                              style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: 0.25, height: 1.43)));
                                                    },
                                                    onSelected:
                                                        (SelectionPopupModel
                                                            selection) {},
                                                    displayStringForOption:
                                                        (SelectionPopupModel
                                                            option) {
                                                      return option.title;
                                                    })),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitTypeController3,
                                                hintText: "lbl_rabbit_type".tr,
                                                margin: getMargin(
                                                    left: 22,
                                                    top: 12,
                                                    right: 22)),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitBreedController3,
                                                hintText: "lbl_rabbit_breed".tr,
                                                margin: getMargin(
                                                    left: 22,
                                                    top: 12,
                                                    right: 22)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 22,
                                                    top: 12,
                                                    right: 22),
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
                                                      CustomButton(
                                                          width: 99,
                                                          text: "lbl_weight_kg"
                                                              .tr,
                                                          margin: getMargin(
                                                              left: 9),
                                                          variant: ButtonVariant
                                                              .OutlineBlack9001e,
                                                          shape: ButtonShape
                                                              .RoundedBorder16,
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
                                                    .dateofAcquisaController2,
                                                hintText:
                                                    "msg_date_of_acquisa".tr,
                                                margin: getMargin(
                                                    left: 22,
                                                    top: 12,
                                                    right: 22),
                                                textInputAction:
                                                    TextInputAction.done),
                                            CustomButton(
                                                width: 267,
                                                text: "lbl_edit".tr,
                                                margin: getMargin(
                                                    left: 22,
                                                    top: 129,
                                                    right: 22),
                                                onTap: onTapBtnEdit)
                                          ])))
                            ])))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.checkRabbitsScreen);
  }

  onTapBtnEdit() {
    Get.toNamed(AppRoutes.editSelectedRabbitInfoScreen);
  }
}
