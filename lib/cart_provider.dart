import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{//extended becuase i could then use in main.dart file

  final List<Map<String,dynamic>> cart=[];


  void addProduct(Map<String,dynamic>product){
    cart.add(product);
    notifyListeners();
  }//for adding the product to the cart

  void removeProduct(Map<String,dynamic>product){
    cart.remove(product);
    notifyListeners();
  }//for removing the product from the cart

}