import 'package:flutter/material.dart';
import 'package:invoice_app/utils/routes.dart';

void main() {
  runApp(const My_Invoice());
}

class My_Invoice extends StatelessWidget {
  const My_Invoice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
