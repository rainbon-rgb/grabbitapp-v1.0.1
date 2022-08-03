import 'controller/rabbit_generated_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';
import 'package:grabbitapp/widgets/custom_button.dart';

class RabbitGeneratedInfoScreen
    extends GetWidget<RabbitGeneratedInfoController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                          height: getVerticalSize(414.00),
                          width: getHorizontalSize(325.00),
                          margin: getMargin(left: 16, top: 47, right: 16),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(414.00),
                                    width: getHorizontalSize(320.00),
                                    margin: getMargin(left: 4, right: 1),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.bluegray100,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(15.00))))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(top: 81, bottom: 81),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.img11,
                                        height: getVerticalSize(250.00),
                                        width: getHorizontalSize(325.00))))
                          ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(left: 16, top: 28, right: 16),
                          decoration: AppDecoration.fillAmberA100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: getHorizontalSize(152.00),
                                        margin: getMargin(
                                            left: 17,
                                            top: 13,
                                            right: 17,
                                            bottom: 38),
                                        child: Text("msg_breed_californ".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular20
                                                .copyWith())))
                              ])),
                      CustomButton(
                          width: 267,
                          text: "lbl_done".tr,
                          margin: getMargin(
                              left: 16, top: 20, right: 16, bottom: 20),
                          onTap: onTapBtnDone)
                    ]))))));
  }

  onTapBtnDone() {
    Get.toNamed(AppRoutes.editDetailsScreen);
  }
}
