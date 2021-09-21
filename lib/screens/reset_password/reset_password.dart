import 'package:cdio4/components/hero_title.dart';
import 'package:cdio4/constants/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/reset_form.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.04),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                    child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.close),
                )),
                SizedBox(height: Config.screenHeight! * 0.1),
                HeroTitle(
                    title: "Recovery",
                    subTitle: "Please enter your account email..."),
                SizedBox(height: Config.screenHeight!*0.1),
                ResetForm(),
                SizedBox(height: Config.screenHeight! * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
