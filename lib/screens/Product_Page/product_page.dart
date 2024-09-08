import 'package:flutter/material.dart';
import 'package:invoice_app/screens/Product_Page/cartpage.dart';

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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              invoiceProduct.length,
              (index) => ListTile(
                title: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    "Name ${invoiceProduct[index].pro_title}"),
                subtitle: Text('${invoiceProduct[index].pro_price}'),
                trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        invoicecart.add(index);
                      });
                    },
                    icon: const Icon(Icons.shopping_cart_checkout)),
              ),
            ),
            ElevatedButton(onPressed: () {
             Navigator.of(context).pushNamed('/cart');
            }, child:Text('Cart'))
          ],
        ),
      ),
    );
  }
}
