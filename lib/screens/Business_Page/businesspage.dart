import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';
import 'package:invoice_app/utils/global.dart';

import 'component/businessText.dart';

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
          title: const Text(
            'Business Details',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          elevation: 2,
          shadowColor: Colors.black,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: labelText_Box(name: "Business Name")),
                              Expanded(
                                  child: labelText_Box(name: "  Your Name"))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: inputTextField(
                                      txtcontoller: txtBusinessname,
                                      isAddress: false,
                                      hint: 'Krishna Textile')),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: inputTextField(
                                      txtcontoller: txtYourName,
                                      isAddress: false,
                                      hint: 'Mukesh')),
                            ],
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Row(
                            children: [
                              Expanded(child: labelText_Box(name: "GSTIN")),
                              Expanded(
                                  child: labelText_Box(
                                      name: "   Business Location"))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: inputTextField(
                                      txtcontoller: txtGst,
                                      isAddress: false,
                                      hint: 'GST556631AS')),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: inputTextField(
                                      txtcontoller: txtBusinessLoaction,
                                      isAddress: false,
                                      hint: 'Indian')),
                            ],
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          labelText_Box(name: "Date of Foundation"),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
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
                                    txtDatefounder.text = datebirth;
                                  }
                                });
                              },
                              child: inputTextField(
                                  txtcontoller: txtDatefounder,
                                  isAddress: false,
                                  hint: '20/10/2020')),
                          const SizedBox(
                            height: 13,
                          ),
                          labelText_Box(name: "Address line"),
                          const SizedBox(
                            height: 10,
                          ),
                          inputTextField(
                              txtcontoller: txtAddress,
                              isAddress: false,
                              hint: 'A/204 Los Angels'),
                          const SizedBox(
                            height: 13,
                          ),
                          Row(
                            children: [
                              Expanded(child: labelText_Box(name: "City")),
                              Expanded(child: labelText_Box(name: "   State"))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: inputTextField(
                                      txtcontoller: txtCity,
                                      isAddress: false,
                                      hint: 'Surat')),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: inputTextField(
                                      txtcontoller: txtState,
                                      isAddress: false,
                                      hint: 'Gujarat')),
                            ],
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          labelText_Box(name: "Zip/Postal Code"),
                          const SizedBox(
                            height: 10,
                          ),
                          inputTextField(
                              txtcontoller: txtZipcode,
                              isAddress: false,
                              hint: '395010'),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 15, left: 15, top: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/cust');
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: button,
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment.center,
                          child: const Text(
                            "Next",
                            style: TextStyle(
                                color: offwhite,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    "You can change these details at any time from Settings.",
                    style: TextStyle(
                        color: offlabel,
                        fontSize: 13),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
