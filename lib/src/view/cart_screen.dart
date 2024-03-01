import 'package:flutter/material.dart';
import 'package:flutter_sun_eye/core/colors/app_color.dart';
import 'package:flutter_sun_eye/src/controller/cart_controller.dart';
import 'package:flutter_sun_eye/src/view/widgets/item_widget.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  final CartController _cartController = Get.find();

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,top: 50),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder:(context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 22.0),
            child: ItemWidget(
              height: 100.0,
              image: _cartController.items[index]['image'],
              title: _cartController.items[index]['name'],
              price: _cartController.items[index]['price'],
              color: _cartController.items[index]['color'],
            ),
          ),
          itemCount: _cartController.items.length,
        ),
      ),
    );
  }
}
