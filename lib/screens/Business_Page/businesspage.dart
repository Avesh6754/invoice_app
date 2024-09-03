import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';

class Businesspage extends StatefulWidget {
  const Businesspage({super.key});

  @override
  State<Businesspage> createState() => _BusinesspageState();
}

class _BusinesspageState extends State<Businesspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offwhite,
      appBar: AppBar(
        backgroundColor: offwhite,
        title: Text(
          'Business Details',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 2,
        shadowColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                rowtxtmethod(
                    label: 'Business Name', isheight: true, isWidth: true),
                rowtxtmethod(label: 'Your Name', isheight: true, isWidth: true)
              ],
            )
          ],
        ),
      ),
    );
  }

  Column rowtxtmethod(
      {required String label, required bool isheight, required bool isWidth}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$label",
            style: TextStyle(
                color: offlabel, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: (isheight) ? 50 : null,
          width: (isWidth) ? 150 : null,
          child: TextFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: button,width: 1.6)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
