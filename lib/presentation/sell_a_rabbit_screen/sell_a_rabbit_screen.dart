import 'controller/sell_a_rabbit_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';

class SellARabbitScreen extends GetWidget<SellARabbitController> {
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
                                                left: 63,
                                                top: 17,
                                                right: 117,
                                                bottom: 17),
                                            child: Text("lbl_sell_a_rabbit2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold20
                                                    .copyWith()))
                                      ])))),
                      GestureDetector(
                          onTap: () {
                            onTapScanaqrcode();
                          },
                          child: Container(
                              margin: getMargin(left: 18, top: 35, right: 18),
                              decoration: AppDecoration.fillAmber400.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(top: 11, bottom: 10),
                                        child: CommonImageView(
                                            imagePath: ImageConstant.imgCamera,
                                            height: getVerticalSize(24.00),
                                            width: getHorizontalSize(23.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 12, bottom: 14),
                                        child: Text("lbl_scan_qr_code".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtAbelRegular20
                                                .copyWith()))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 18, top: 29, right: 18),
                          child: Text("msg_recommended_rab".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular19.copyWith())),
                      GestureDetector(
                          onTap: () {
                            onTapRabbitcontaine();
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 18, top: 28, right: 17, bottom: 516),
                              decoration: AppDecoration.outlineBlack900
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 14, bottom: 15),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgCalifornianrab,
                                            height: getVerticalSize(30.00),
                                            width: getHorizontalSize(39.00))),
                                    Container(
                                        margin: getMargin(
                                            left: 21,
                                            top: 15,
                                            right: 165,
                                            bottom: 15),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_rabbit_1001".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular15
                                                      .copyWith()),
                                              Padding(
                                                  padding:
                                                      getPadding(right: 10),
                                                  child: Text(
                                                      "lbl_view_details".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular8
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)))
                                            ]))
                                  ])))
                    ]))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  onTapScanaqrcode() {
    Get.toNamed(AppRoutes.scanQrScreen);
  }

  onTapRabbitcontaine() {
    Get.toNamed(AppRoutes.rabbitDetailsForMeatSellingScreen);
  }
}
