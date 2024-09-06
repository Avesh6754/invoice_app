import 'dart:math';

import 'package:flutter/material.dart';
import 'package:invoice_app/model/product_data.dart';
import 'package:invoice_app/model/product_list.dart';
import 'package:invoice_app/screens/Business_Page/component/businessText.dart';
import 'package:invoice_app/screens/Product_Page/product_page.dart';
import 'package:invoice_app/utils/color.dart';
import 'package:invoice_app/utils/global.dart';

import 'component/cutomer_Details.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    invoiceProduct = product_list.map((e) => Invoice.fromMap(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.linearToSrgbGamma(),
                    image: AssetImage('assets/image/images.jpg'),
                    fit: BoxFit.cover)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'New Invoice',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        '      Fill in the required details\nto generate and share this invoice',
                        style: TextStyle(fontSize: 14, color: offlabel),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: offlabel,
                    ))
              ],
            ),
          )),
          Expanded(
              flex: 5,
              child: Container(
                color: offwhite,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        labelText_Box(name: "Customer"),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      child: customerDetails(context),
                                    );
                                  });
                            });
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: defaultbutton),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: button,
                                  ),
                                ),
                                const Text(
                                  "Add Customer Details",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: labelText_Box(name: "Invoice Date")),
                            Expanded(child: labelText_Box(name: "  Due Date")),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Expanded(
                              child: GestureDetector(
                            onTap: () {
                              setState(() async {
                                DateTime? dateTime = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(1990),
                                    lastDate: DateTime(2100),
                                    initialDate: DateTime.now());
                                if (dateTime != null) {
                                  var datebirth =
                                      '${dateTime.day}/${dateTime.month}/${dateTime.year}';
                                  txtinvoice.text = datebirth;
                                }
                              });
                            },
                            child: AbsorbPointer(
                              absorbing: true,
                              child: inputTextField(
                                  txtcontoller: txtinvoice,
                                  isAddress: false,
                                  hint: '10/05/2023'),
                            ),
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() async {
                                    DateTime? dateTime = await showDatePicker(
                                        context: context,
                                        firstDate: DateTime(1990),
                                        lastDate: DateTime(2100),
                                        initialDate: DateTime.now());
                                    if (dateTime != null) {
                                      var datebirth =
                                          '${dateTime.day}/${dateTime.month}/${dateTime.year}';
                                      txtDueDate.text = datebirth;
                                    }
                                  });
                                },
                                child: AbsorbPointer(
                                  absorbing: true,
                                  child: inputTextField(
                                      txtcontoller: txtDueDate,
                                      isAddress: false,
                                      hint: '05/10/2024'),
                                )),
                          )
                        ]),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: labelText_Box(name: "Invoice Number")),
                            Expanded(child: labelText_Box(name: " Currency")),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: inputTextField(
                                    txtcontoller: txtInvoiceNumber,
                                    isAddress: false,
                                    hint: 'INV001')),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: inputTextField(
                                    txtcontoller: txtCurrency,
                                    isAddress: false,
                                    hint: 'INR')),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        labelText_Box(name: "Items"),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                              Navigator.of(context).pushNamed('/pro');
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: defaultbutton),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: button,
                                  ),
                                ),
                                const Text(
                                  "Add item Details",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        labelText_Box(name: "Notes"),
                        const SizedBox(
                          height: 10,
                        ),
                        inputTextField(
                            txtcontoller: txtnote,
                            isAddress: true,
                            hint: 'I am glad to work with you'),
                        const SizedBox(
                          height: 15,
                        ),
                        labelText_Box(name: "Terms & Condition"),
                        const SizedBox(
                          height: 10,
                        ),
                        inputTextField(
                            txtcontoller: txtTerms,
                            isAddress: true,
                            hint: 'Complete the all bill on time')
                      ],
                    ),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: button, borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                child: const Text(
                  "Generate Invoice",
                  style: TextStyle(
                      color: offwhite,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
