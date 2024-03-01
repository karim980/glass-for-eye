import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  final List items = [].obs;

  void addToCart({
    required String name,
    required String image,
    required String color,
    required int price,

}){
    List newItem =[
      {
        'name':name,
        'image':image,
        'price':price,
        'color':color,
      }
    ];
    debugPrint('add item successful ${newItem.toString()}');
    items.addAll(newItem);
  }
}