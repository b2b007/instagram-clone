import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/router/bottom_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryIconTheme: IconThemeData(color: Colors.black),
      ),
      home: BottomRouter(),
    );
  }
}
