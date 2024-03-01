import 'package:flutter/material.dart';

import 'colors/app_color.dart';

final appTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      toolbarHeight: 75,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white, size: 30),
      backgroundColor: Colors.white,
      centerTitle: true,
    ),
    iconTheme: IconThemeData(color: Colors.grey[700]),
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 52, fontWeight: FontWeight.bold,color: Colors.white),
      headline2: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),
      bodyText2: TextStyle(
        fontSize: 20,
        color: Colors.white
      ),
      bodyText1: TextStyle(
        fontSize: 26,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
      headline3: TextStyle(
        fontSize: 23,
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            elevation: MaterialStatePropertyAll(4),
            backgroundColor: MaterialStatePropertyAll(AppColors.mainColor))),
    brightness: Brightness.light,
    progressIndicatorTheme:
        ProgressIndicatorThemeData(color: AppColors.mainColor),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 10,
      backgroundColor: Colors.white,
      foregroundColor: AppColors.blackColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.white),
      floatingLabelStyle: TextStyle(color: Colors.black),
      iconColor: Colors.black,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.mainColor,
        selectedIconTheme: IconThemeData(color: AppColors.mainColor)));
