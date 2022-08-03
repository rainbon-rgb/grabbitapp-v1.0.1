import 'controller/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:grabbitapp/widgets/custom_button.dart';

class ScanScreen extends GetWidget<ScanController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Container(
                          height: getVerticalSize(659.00),
                          width: getHorizontalSize(359.00),
                          margin: getMargin(left: 1),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getVerticalSize(200.00),
                                        width: getHorizontalSize(359.00),
                                        margin: getMargin(bottom: 10),
                                        decoration: AppDecoration.fillAmber400,
                                        child: Stack(children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 94,
                                                      top: 10,
                                                      right: 94,
                                                      bottom: 10),
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgGrabbitlogo,
                                                      height: getVerticalSize(
                                                          68.00),
                                                      width: getHorizontalSize(
                                                          170.00))))
                                        ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(518.00),
                                        width: getHorizontalSize(325.00),
                                        margin: getMargin(
                                            left: 17, top: 10, right: 17),
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.bluegray100,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            15.00))),
                                            child: Stack(children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 113,
                                                          top: 33,
                                                          right: 113,
                                                          bottom: 33),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgCameraicon,
                                                          height:
                                                              getVerticalSize(
                                                                  92.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  98.00))))
                                            ])))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16,
                                            top: 169,
                                            right: 16,
                                            bottom: 169),
                                        child: CommonImageView(
                                            imagePath: ImageConstant.img11,
                                            height: getVerticalSize(250.00),
                                            width: getHorizontalSize(325.00))))
                              ])),
                      CustomButton(
                          width: 267,
                          text: "lbl_next".tr,
                          margin: getMargin(
                              left: 46, top: 56, right: 46, bottom: 20),
                          onTap: onTapBtnNext)
                    ]))))));
  }

  onTapBtnNext() {
    Get.toNamed(AppRoutes.rabbitGeneratedInfoScreen);
  }
}
