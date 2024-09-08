import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offwhite,

      body: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/image/multitasking-design-illustration_52683-32164.jpg'),
          Text('Add Business Details',style: TextStyle(fontSize: 27,fontWeight: FontWeight.w500),),
          Text('Configure your business details\nto be displayed on invoices.',style: TextStyle(fontSize: 17),),
        ],
      ),
    );
  }
}