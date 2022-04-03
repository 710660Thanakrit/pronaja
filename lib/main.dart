import 'package:flutter/material.dart';
import 'package:GaneShop/pages/cart/cart_page.dart';
import 'package:GaneShop/pages/home/home_page.dart';
import 'package:GaneShop/pages/PSN/Psn_page.dart';
import 'package:GaneShop/pages/profile/your_profile.dart';
import 'package:GaneShop/pages/PC/Pc_page.dart';
import 'package:GaneShop/pages/XBOX/Xbox_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GaneShop',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 17.0,color: Colors.black),
        ),
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.routeName:(context)=>const HomePage(),
        PcPage.routeName:(context)=>const PcPage(),
        PsnPage.routeName:(context)=>const PsnPage(),
        XboxPage.routeName:(context)=>const XboxPage(),
        YourProfile.routeName:(context)=>const YourProfile(),
        CartPage.routeName:(context)=>const CartPage(),

      },
      initialRoute: HomePage.routeName,
    );
  }
}
