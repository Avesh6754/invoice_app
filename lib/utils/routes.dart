import 'package:flutter/material.dart';
import 'package:invoice_app/screens/Business_Page/businesspage.dart';
import 'package:invoice_app/screens/Cutomer_Page/customer_Page.dart';


import '../screens/SplashScreen/slpash_screen.dart';

Map<String,Widget Function(BuildContext context)> routes={
  '/':(context)=>SlpashScreen(),
  '/home':(context)=>Businesspage(),
  '/cust':(context)=>CustomerPage(),

};