import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_demo/models/product.dart';

class GlobalController extends GetxController {
  List<Product> _products = [];
  List<Product> get products => _products;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    _loadProducts();
  }

  _loadProducts() async {
    final String productsString =
        await rootBundle.loadString('assets/products.json');

    this._products = (jsonDecode(productsString) as List)
        .map((e) => Product.fromJson(e))
        .toList();

    print("global on init");
    update(['products']);
  }
}
