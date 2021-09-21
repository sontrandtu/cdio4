import 'package:cdio4/controllers/authController.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}