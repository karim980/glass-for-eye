import 'package:flutter/material.dart';
import 'package:flutter_sun_eye/src/view/cart_screen.dart';
import 'package:get/get.dart';

import '../../../core/colors/app_color.dart';

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({super.key});


  @override
  Widget build(BuildContext context) {
    double widgetWidth = MediaQuery.of(context).size.width;
    double widgetHeight = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: widgetHeight / 2.2,
          width: widgetWidth / 1.3,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(46),
                  topLeft: Radius.circular(46)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/home.jpg'))),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: FloatingActionButton(
            onPressed: () {
              Get.to(()=>CartScreen());
            },
            child: Icon(Icons.shopping_bag_rounded,color: Colors.white,),
            elevation: 8,
            backgroundColor: AppColors.mainColor,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 80,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sun Glasses',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    inherit: false,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Cat-Eye',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    inherit: false,
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
