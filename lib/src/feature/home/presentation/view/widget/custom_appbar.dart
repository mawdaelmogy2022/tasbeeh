import 'package:flutter/material.dart';
import 'package:project/src/core/style/colors_app.dart';
 class CustomAppbar{
 static PreferredSizeWidget? appbar() {
  return AppBar(
    backgroundColor: ColorsApp.kprimaryColor,
    centerTitle: true,
    title: const Text('HomePage',
    style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),),
  );
}
}
