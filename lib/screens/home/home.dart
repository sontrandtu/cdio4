import 'package:cdio4/components/section_titlle.dart';
import 'package:cdio4/constants/config.dart';
import 'package:cdio4/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/categories.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/product_categories.dart';

class Home extends StatelessWidget {

  static String routeName = "/home";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ModalRoute.of(context)!.settings.arguments.toString() // Lấy data từ screen trước
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Config.screenWidth! * 0.05),
              HomeHeader(),
              SizedBox(height: Config.screenWidth! * 0.1),
              DiscountBanner(),
              SizedBox(height: Config.screenWidth! * 0.1),
              Categories(),
              SizedBox(height: Config.screenWidth! * 0.1),
              ProductCategories(),
              SizedBox(height: Config.screenWidth! * 0.1),
              Column(
                children: [
                  SectionTitle(title: "Popular Product"),
                  SizedBox(height: Config.screenWidth! * 0.05),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          demoProducts.length,
                          (index) => ProductCard(
                            product: demoProducts[index],onPress: (){},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 0.4,
    this.aspectRatio = 1.02,
    @required this.product,
    @required this.onPress,
  }) : super(key: key);

  final double width, aspectRatio;
  final Product? product;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Config.screenWidth! * 0.05),
      child: SizedBox(
        width: Config.screenWidth! * width,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRatio,
              child: Container(
                padding: EdgeInsets.all(Config.screenWidth! * 0.06),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product!.images[0]),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              product!.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product!.price}",
                  style: TextStyle(
                    fontSize: Config.screenWidth! * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart),
                  splashRadius: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
