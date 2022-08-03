import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbitapp/core/app_export.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.amber400,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: GestureDetector(
                        onTap: () {
                          onTapWelcome();
                        },
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 50,
                                          top: 282,
                                          right: 50,
                                          bottom: 20),
                                      child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgGrabbitlogo,
                                          height: getVerticalSize(118.00),
                                          width: getHorizontalSize(259.00))))
                            ])))))));
  }

  onTapWelcome() {
    Get.toNamed(AppRoutes.homepageScreen);
  }
}
