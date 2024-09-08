import 'package:flutter/material.dart';
import 'package:invoice_app/utils/global.dart';
class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart page'),
      ),
      body: Column(children: [
        ...List.generate(invoicecart.length, (index)=>ListTile(
          title: Text("${invoicecart[index]}"),
          subtitle: Text("${invoicecart[index]['price']}"),
        ))
      ],),
    );
  }
}
