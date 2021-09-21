import 'package:cdio4/components/rounded_elevate_button.dart';
import 'package:cdio4/components/rounded_text_formfield.dart';
import 'package:cdio4/constants/config.dart';
import 'package:cdio4/controllers/authController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetForm extends StatefulWidget {
  const ResetForm({
    Key? key,
  }) : super(key: key);

  @override
  _ResetFormState createState() => _ResetFormState();
}

class _ResetFormState extends State<ResetForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();
    return Form(
      key: _formKey,
      child: Column(
        children: [
          RoundedTextFormField(
            hintText: "Email",
            controller: _emailController,
            validator: (value) {
              bool _isEmailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value!);
              if (!_isEmailValid) {
                return "Invalid Email";
              }
              return null;
            },
          ),
          SizedBox(height: Config.screenHeight! * 0.03),
          RoundedElevateButton(
            onPress: () {
              if (_formKey.currentState!.validate()) {
                String email = _emailController.text.trim();
                _authController.resetPassword(email);
              }
            },
            title: "Reset Password",
            padding: EdgeInsets.symmetric(
              horizontal: Config.screenWidth! * 0.30,
              vertical: Config.screenHeight! * 0.02,
            ),
          ),
        ],
      ),
    );
  }
}
