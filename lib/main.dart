import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:land_of_dreams/views/starter/starter_view.dart';

import 'data/constants.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: CustomColors.kBackground),
      home: const StarterView(),
    );
  }
}
