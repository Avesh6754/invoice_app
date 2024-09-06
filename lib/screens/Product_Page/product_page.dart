import 'package:flutter/material.dart';

import '../../utils/global.dart';
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(invoiceProduct.length,(index)=>
                  ListTile(
                    title: Text(
                        "Name ${invoiceProduct[index].pro_title}"),
                    trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            invoicecart.add(
                                invoiceProduct[
                                index]);
                          });
                        },
                        icon: const Icon(Icons
                            .shopping_cart_checkout)),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
