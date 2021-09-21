import 'package:cdio4/controllers/productController.dart';
import 'package:cdio4/screens/home/components/search_field.dart';
import 'package:cdio4/constants/config.dart';
import 'package:flutter/material.dart';

import 'icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductController _controller = ProductController();
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Config.screenWidth! * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(
            widthOfField: Config.screenWidth! * 0.6,
            hintText: "Search Product",
          ),
          IconButtonWithCounter(
            onPress: () {
              _controller.getProduct();
            },
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfItems: 0,
          ),
          IconButtonWithCounter(
            onPress: () {},
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}
