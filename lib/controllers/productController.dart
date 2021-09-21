

import 'package:cdio4/models/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{

  CollectionReference product = FirebaseFirestore.instance.collection("SanPham");

  RxList<Product> products = RxList<Product>();

  void getProduct(){
    product.get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        print(result.data());
      });
    });
  }
}
