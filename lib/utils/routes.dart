import 'package:flutter/material.dart';
import 'package:invoice_app/screens/Business_Page/businesspage.dart';
import 'package:invoice_app/screens/Cutomer_Page/customer_Page.dart';

import 'package:invoice_app/screens/OnboardingScreen/onboardingscreen.dart';
import 'package:invoice_app/screens/Pdf_Screen/pdf_screen.dart';

import 'package:invoice_app/screens/Product_Page/product_page.dart';
import 'package:invoice_app/screens/Product_Page/search_page.dart';


import '../screens/SplashScreen/slpash_screen.dart';

Map<String,Widget Function(BuildContext context)> routes={
  '/':(context)=>const SlpashScreen(),
  '/onbord':(context)=>OnbordingPage(),
  '/home':(context)=>const Businesspage(),

  '/cust':(context)=>const CustomerPage(),
  '/pro':(context)=>const ProductPage(),
  '/search':(context)=>const Searchpage(),
  // '/loti':(context)=>const LottiePage(),
  '/pdf':(context)=>const PdfView(),


};