import 'controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';

class HomepageScreen extends GetWidget<HomepageController> {
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
                              width: double.infinity,
                              decoration: AppDecoration.fillAmber400,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 61, top: 10, right: 61),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgGrabbitlogo,
                                            height: getVerticalSize(68.00),
                                            width: getHorizontalSize(170.00))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapScanRabbit();
                                        },
                                        child: Container(
                                            margin: getMargin(
                                                left: 61,
                                                top: 42,
                                                right: 61,
                                                bottom: 30),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 8, bottom: 9),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgSlrcamera,
                                                          height:
                                                              getVerticalSize(
                                                                  33.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  32.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 26,
                                                          top: 14,
                                                          bottom: 14),
                                                      child: Text(
                                                          "lbl_scan_rabbit".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRomanSemiBold20
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      1.20)))
                                                ])))
                                  ]))),
                      Container(
                          margin: getMargin(left: 19, top: 42, right: 19),
                          padding: getPadding(left: 5, top: 6, bottom: 7),
                          decoration: AppDecoration.txtFillAmber400.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.txtCustomBorderTL10),
                          child: Text("lbl_check_rabbits".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoRomanLight15
                                  .copyWith(letterSpacing: 0.90))),
                      Container(
                          height: getVerticalSize(216.00),
                          width: getHorizontalSize(322.00),
                          margin: getMargin(left: 19, right: 19),
                          decoration: BoxDecoration(
                              color: ColorConstant.amberA100,
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                      Radius.circular(getHorizontalSize(10.00)),
                                  bottomRight: Radius.circular(
                                      getHorizontalSize(10.00))))),
                      Container(
                          margin: getMargin(left: 19, top: 25, right: 19),
                          padding: getPadding(left: 5, top: 6, bottom: 7),
                          decoration: AppDecoration.txtFillAmber400.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.txtCustomBorderTL10),
                          child: Text("lbl_sell_a_rabbit".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoRomanLight15
                                  .copyWith(letterSpacing: 0.90))),
                      Container(
                          height: getVerticalSize(216.00),
                          width: getHorizontalSize(322.00),
                          margin: getMargin(left: 19, right: 19, bottom: 20),
                          decoration: BoxDecoration(
                              color: ColorConstant.amberA100,
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                      Radius.circular(getHorizontalSize(10.00)),
                                  bottomRight: Radius.circular(
                                      getHorizontalSize(10.00)))))
                    ]))))));
  }

  onTapScanRabbit() {
    Get.toNamed(AppRoutes.scanScreen);
  }
}
