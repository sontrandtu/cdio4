import 'package:cdio4/constants/config.dart';
import 'package:cdio4/controllers/authController.dart';
import 'package:cdio4/screens/login_successful/login_successful.dart';
import 'package:cdio4/screens/sign_in/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: GetBuilder<AuthController>(
        builder: (_) {
          return SafeArea(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.04),
              child: _.userProfile != null ? LoginSuccessful() : SignIn(),
            ),
          );
        },
      ),
    );
  }
}
