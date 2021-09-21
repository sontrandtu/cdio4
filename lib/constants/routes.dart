import 'package:cdio4/screens/home/home.dart';
import 'package:cdio4/screens/login_successful/login_successful.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => Home(),
  LoginSuccessful.routeName: (context) => LoginSuccessful(),
};