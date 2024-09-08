import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';

import '../../utils/global.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('product page'),
        leading: IconButton(onPressed: () {
          Navigator.of(context).pushNamed('/cust');
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            ...List.generate(
              invoiceProduct.length,
              (index) => ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  child: Image.network('${invoiceProduct[index].pro_Image}'),
                ),
                title: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    "Name ${invoiceProduct[index].pro_title}"),
                subtitle: Text('${invoiceProduct[index].pro_price}'),
                trailing: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(button)),onPressed: () {
                  invoicecart.add(invoiceProduct[index]);
                }, child: Text("+  Add To Cart",style: TextStyle(color: offwhite),))
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed('/cust');
            }, child: Text("Cart"))
          ],
        ),
      ),
    );
  }
}
