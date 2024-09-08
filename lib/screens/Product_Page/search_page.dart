import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';
import 'package:invoice_app/utils/global.dart';

import 'package:searchable_listview/searchable_listview.dart';


class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Search'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/pro');
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: SearchableList(
                inputDecoration: InputDecoration(
                    fillColor: Colors.red,
                    focusColor: Colors.red,
                    hintText: 'Search....',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                initialList: invoiceProduct,
                filter: (query) => invoiceProduct
                    .where(
                      (e) => e.pro_title!.toLowerCase().contains(query),
                )
                    .toList(),
                itemBuilder: (item) {
                  return Column(
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
                                "${invoiceProduct[index].pro_title}"),
                            subtitle: Text('Price ${invoiceProduct[index].pro_price}'),
                            trailing: ElevatedButton(
                                style: const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(button)),
                                onPressed: () {
                                  setState(() {

                                    if (invoiceProduct[index].isNew) {
                                      invoiceProduct[index].isNew=false;
                                      invoicecart.add(invoiceProduct[index]);
                                      ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                                        content: Text("Product Added Successful"),
                                        duration: Duration(seconds: 2),
                                      ));
                                    }
                                    else
                                    {
                                      ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                                        content: Text("Product Already Added"),
                                        duration: Duration(seconds: 2),
                                      ));
                                    }
                                  }
                                  );
                                },
                                child: const Text(
                                  "+  Add To Cart",
                                  style: TextStyle(color: offwhite),
                                ))),
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
