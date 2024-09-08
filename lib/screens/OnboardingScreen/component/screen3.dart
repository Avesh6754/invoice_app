
import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offwhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/image/downlosd.jpg'),
          Text('Preview & Share the invoice',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          Text('Check how the final invoice looks\nbefore saving/sharing it.',style: TextStyle(fontSize: 15),),

        ],
      ),
    );
  }
}