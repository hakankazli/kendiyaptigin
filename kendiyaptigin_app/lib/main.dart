import 'package:flutter/material.dart';
import 'package:kendiyaptigin_app/loginekranı/homepage.dart';
import 'package:kendiyaptigin_app/loginekranı/login_page.dart';
import 'package:kendiyaptigin_app/sinavsorulari/sinavsoru1.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>LoginPage(),

      },
    );
  }
}
