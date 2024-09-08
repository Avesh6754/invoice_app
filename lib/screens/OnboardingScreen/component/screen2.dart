import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offwhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/image/invoice.jpg'),
          Text(
            'Add Invoice Details',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
          ),
          Text(
            'Fill in your Customer details and\nthe items to be invoiced.',
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
