import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house/routes/routes.dart';
import 'package:house/utils/color.dart';

import 'utils/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      double screenWidth = window.physicalSize.width;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'House',
      theme: ThemeData(
        primaryColor: COLOR_WHITE,
        accentColor: COLOR_DARK_BLUE,
        textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT, 
        fontFamily: "Montserrat"
      ),
      initialRoute: RoutesName.HOME,
      getPages: RoutesPage.routes,
    );
  }
}