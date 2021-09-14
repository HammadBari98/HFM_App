import 'package:flutter/material.dart';
import 'package:hfm_app/screens/FoodServiceScreens/food_home.dart';
import 'package:hfm_app/screens/FoodServiceScreens/food_order.dart';
import 'package:hfm_app/screens/PaymentServiceScreens/payment_home.dart';
import 'package:hfm_app/screens/home_screen.dart';
import 'package:hfm_app/screens/landing_screen.dart';
import 'package:hfm_app/screens/login_screen.dart';
import 'package:hfm_app/screens/mobile_num_screen.dart';
import 'package:hfm_app/screens/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
