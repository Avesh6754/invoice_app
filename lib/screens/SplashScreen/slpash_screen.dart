import 'dart:async';

import 'package:flutter/material.dart';

class SlpashScreen extends StatefulWidget {
  const SlpashScreen({super.key});

  @override
  State<SlpashScreen> createState() => _SlpashScreenState();
}

class _SlpashScreenState extends State<SlpashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.of(context).pushReplacementNamed('/home');
    },);
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/image/logo.png'))
              ),
            ),
            Text("Invoice App",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.blue),)
          ],
        ),
      ),
    );
  }
}
