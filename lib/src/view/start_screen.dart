import 'package:flutter/material.dart';
import 'package:flutter_sun_eye/core/strings/app_string.dart';
import 'package:flutter_sun_eye/src/view/home_screen.dart';
import 'package:flutter_sun_eye/src/view/widgets/default_button_widget.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final them =Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/landing.jpg'), // Your image path here
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                AppStrings.appTitle,
                style: them.headline1,
              ),
              SizedBox(height: 35,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultButtonWidget(
                    onPressed: () {
                      Get.offAll(HomeScreen());
                    },
                    text: AppStrings.startShopping,
                  ),
                  SizedBox(width: 12,),
                  FloatingActionButton(onPressed: (){
                    Get.offAll(HomeScreen());
                  },child: Icon(Icons.arrow_forward),)
                ],
              ),
              SizedBox(height: 35,),
            ],
          ),
        ),
      ),
    );
  }
}
