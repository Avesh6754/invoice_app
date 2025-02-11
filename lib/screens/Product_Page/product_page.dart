import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';

import '../../utils/global.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<String> categories = [
    'Electronics',
    'Smart watch',
    'Computer',
    'Equipments',
    'Beauty Product',
    'Home Decoration',
    'Computer',
    'Smart Phones',
    'Smart watch',
    'Electronics',
    'Fashion',
  ];
  final List<String> selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    final filterProducts = invoiceProduct.where((product) {
      return selectedCategories.isEmpty ||
          selectedCategories.contains(product.pro_category);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pushNamed('/cust');
        }, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/search');
            },
            icon: Icon(
              Icons.search,

            ),
          )
        ],
        title: const Text(
          'Product Page',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: filterProducts.length,
              itemBuilder: (context, index) {
                final product = filterProducts[index];
                return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child:
                          Image.network('${invoiceProduct[index].pro_Image}'),
                    ),
                    title: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        "${invoiceProduct[index].pro_title}"),
                    subtitle: Text('Price ${invoiceProduct[index].pro_price}'),
                    trailing: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(button)),
                        onPressed: () {
                          setState(() {
                            if (invoiceProduct[index].isNew) {
                              invoiceProduct[index].isNew = false;
                              invoicecart.add(invoiceProduct[index]);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Product Added Successful"),
                                duration: Duration(seconds: 1),
                              ));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Product Already Added"),
                                duration: Duration(seconds: 1),
                              ));
                            }
                          });
                        },
                        child: const Text(
                          "+  Add To Cart",
                          style: TextStyle(color: offwhite),
                        )));
              },
            ),
          )
        ],
      ),
    );
  }
}
