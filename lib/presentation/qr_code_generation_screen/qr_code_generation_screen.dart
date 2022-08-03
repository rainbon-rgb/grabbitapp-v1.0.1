import 'controller/qr_code_generation_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:grabbitapp/widgets/custom_button.dart';

class QrCodeGenerationScreen extends GetWidget<QrCodeGenerationController> {
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              child: Container(
                                  decoration: AppDecoration.fillAmber400,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapImgBack();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 7,
                                                    top: 14,
                                                    bottom: 14),
                                                child: CommonImageView(
                                                    imagePath:
                                                        ImageConstant.imgBack,
                                                    height:
                                                        getVerticalSize(28.00),
                                                    width: getHorizontalSize(
                                                        48.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 28,
                                                top: 17,
                                                right: 83,
                                                bottom: 17),
                                            child: Text(
                                                "msg_download_qr_cod".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold20
                                                    .copyWith()))
                                      ])))),
                      Container(
                          height: getVerticalSize(302.00),
                          width: getHorizontalSize(292.00),
                          margin: getMargin(left: 36, top: 56, right: 32),
                          decoration: AppDecoration.fillAmberA100,
                          child: Stack(children: [
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 16,
                                        top: 13,
                                        right: 16,
                                        bottom: 19),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgImage1,
                                        height: getVerticalSize(270.00),
                                        width: getHorizontalSize(260.00))))
                          ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(
                              left: 36, top: 140, right: 36, bottom: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(41.00))),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    width: 267,
                                    text: "lbl_download".tr,
                                    alignment: Alignment.centerLeft)
                              ]))
                    ]))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.homepageScreen);
  }
}
