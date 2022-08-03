import 'controller/check_rabbits_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:grabbitapp/widgets/custom_button.dart';
import 'package:grabbitapp/presentation/delete_a_rabbit_bottomsheet/delete_a_rabbit_bottomsheet.dart';
import 'package:grabbitapp/presentation/delete_a_rabbit_bottomsheet/controller/delete_a_rabbit_controller.dart';

class CheckRabbitsScreen extends GetWidget<CheckRabbitsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
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
                                                width: size.width,
                                                child: Container(
                                                    decoration: AppDecoration
                                                        .fillAmber400,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapImgBack();
                                                              },
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              7,
                                                                          top:
                                                                              14,
                                                                          bottom:
                                                                              13),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgBack,
                                                                      height: getVerticalSize(
                                                                          28.00),
                                                                      width: getHorizontalSize(
                                                                          48.00)))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 91,
                                                                      top: 17,
                                                                      right:
                                                                          146,
                                                                      bottom:
                                                                          16),
                                                              child: Text(
                                                                  "lbl_rabbit"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtPoppinsSemiBold20
                                                                      .copyWith()))
                                                        ])))),
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 27, right: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomButton(
                                                      width: 151,
                                                      text:
                                                          "lbl_add_a_rabbit".tr,
                                                      shape: ButtonShape
                                                          .RoundedBorder10,
                                                      fontStyle: ButtonFontStyle
                                                          .MontserratRomanMedium15,
                                                      onTap:
                                                          onTapBtnAddarabbit),
                                                  CustomButton(
                                                      width: 151,
                                                      text:
                                                          "lbl_delete_a_rabbit2"
                                                              .tr,
                                                      shape: ButtonShape
                                                          .RoundedBorder10,
                                                      fontStyle: ButtonFontStyle
                                                          .MontserratRomanMedium15,
                                                      onTap:
                                                          onTapBtnDeletearabbit2)
                                                ])),
                                        GestureDetector(
                                            onTap: () {
                                              onTapRowthumbnail();
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 36,
                                                    right: 16),
                                                decoration: AppDecoration
                                                    .outlineGray900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 11,
                                                              bottom: 14),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgCalifornianrab,
                                                              height:
                                                                  getVerticalSize(
                                                                      42.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      50.00))),
                                                      Container(
                                                          margin: getMargin(
                                                              left: 9,
                                                              top: 14,
                                                              right: 175,
                                                              bottom: 14),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_rabbit_1001"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular15Gray700
                                                                        .copyWith()),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 6,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_view_details"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterMedium8
                                                                            .copyWith()))
                                                              ]))
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  onTapBtnAddarabbit() {
    Get.toNamed(AppRoutes.scanScreen);
  }

  onTapBtnDeletearabbit2() {
    Get.bottomSheet(
      DeleteARabbitBottomsheet(
        Get.put(
          DeleteARabbitController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapRowthumbnail() {
    Get.toNamed(AppRoutes.selectedRabbitScreen);
  }
}
