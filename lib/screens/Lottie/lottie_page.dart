import 'dart:async';

import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';
import 'package:lottie/lottie.dart';


class LottiePage extends StatefulWidget {
  const LottiePage({super.key});

  @override
  State<LottiePage> createState() => _LottiePageState();
}

class _LottiePageState extends State<LottiePage> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 4), (timer) {
      Navigator.of(context).pushNamed('/pdf');
    },);
    return Scaffold(
      backgroundColor: offwhite,
      body: Center(child: Lottie.network('https://lottie.host/4321101e-5900-40c4-8202-d3ae346296dd/UzFOL6Fsh0.json'))
    );
  }
}
