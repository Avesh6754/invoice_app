import 'package:flutter/material.dart';
import 'package:invoice_app/utils/routes.dart';

void main() {
  runApp(const My_Invoic());
}

class My_Invoic extends StatelessWidget {
  const My_Invoic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
