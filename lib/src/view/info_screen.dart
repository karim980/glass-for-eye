import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sun_eye/core/colors/app_color.dart';
import 'package:flutter_sun_eye/core/strings/app_string.dart';
import 'package:flutter_sun_eye/src/view/widgets/default_button_widget.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';

class InfoScreen extends StatelessWidget {
  final CartController _cartController = Get.find();
  String title;
  String image;
  int price;
  String color;

  InfoScreen({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.saleColor,
      appBar: AppBar(
        backgroundColor: AppColors.saleColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image(
            image: NetworkImage(image),
            width: 300,
            height: 180,
            fit: BoxFit.fitWidth,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 22.0, horizontal: 25),
                    child: Text(
                      title,
                      style: them.bodyText1,
                    ),
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.saleColor,
                                  borderRadius: BorderRadius.circular(22)),
                              child: Image(
                                image: NetworkImage(image),
                                fit: BoxFit.fitWidth,
                                width: 125,
                              )),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 20),
                    child: Text(AppStrings.disc,style: TextStyle(color: Colors.black54,fontSize: 16),),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0,bottom: 60),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(decoration: BoxDecoration(color: AppColors.blackColor,borderRadius: BorderRadius.circular(25)),
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Text(
                          '\$ ${price.toString()}',
                          style: them.headline3,
                        )),
                        SizedBox(width: 12,),
                        DefaultButtonWidget(text: 'Add to cart', onPressed: (){
                          _cartController.addToCart(
                              name: title,
                              image: image,
                              price: price,
                            color: color,);
                        }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
