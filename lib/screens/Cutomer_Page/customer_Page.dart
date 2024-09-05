import 'package:flutter/material.dart';
import 'package:invoice_app/screens/Business_Page/component/businessText.dart';
import 'package:invoice_app/utils/color.dart';
import 'package:invoice_app/utils/global.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
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
                Spacer(),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'New Invoice',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      '      Fill in the required details\nto generate and share this invoice',
                      style: TextStyle(fontSize: 14, color: offlabel),
                    )
                  ],
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
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                          setState(() {
                            showModalBottomSheet(context: context, builder:(BuildContext context){

                              return SizedBox(
                                child: Center(
                                child: Column(
                                  children: [
                                
                                
                                
                                  ],
                                ),
                                                                ),
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
                                  onPressed: () {
                                  },
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
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: labelText_Box(name: "Invoice Date")),
                            Expanded(child: labelText_Box(name: "  Due Date")),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: inputTextField(
                                    txtcontoller: txtinvoice,
                                    isAddress: false)),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: inputTextField(
                                    txtcontoller: txtDueDate,
                                    isAddress: false)),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: labelText_Box(name: "Invoice Number")),
                            Expanded(child: labelText_Box(name: "  Due Date")),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: inputTextField(
                                    txtcontoller: txtinvoice,
                                    isAddress: false)),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: inputTextField(
                                    txtcontoller: txtDueDate,
                                    isAddress: false)),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        labelText_Box(name: "Items"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
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
                        SizedBox(
                          height: 15,
                        ),
                        labelText_Box(name: "Notes"),
                        SizedBox(
                          height: 10,
                        ),
                        inputTextField(txtcontoller: txtnote, isAddress: true),
                        SizedBox(
                          height: 15,
                        ),
                        labelText_Box(name: "Terms & Condition"),
                        SizedBox(
                          height: 10,
                        ),
                        inputTextField(txtcontoller: txtTerms, isAddress: true)
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
