import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../utils/global.dart';
import '../../Business_Page/component/businessText.dart';

Padding customerDetails(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize:MainAxisSize.min,
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment:
          MainAxisAlignment
              .spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Clear',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15),
                )),
            const Text(
              'Customer Details',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                  FontWeight.w500),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pop();
              },
              icon: const Icon(
                Icons.cancel,
                color: Colors.grey,
              ),)
          ],
        ),
        Divider(),
        SizedBox(height: 15,),
        labelText_Box(name: "Customer Name"),
        SizedBox(height: 10,),
        inputTextField(txtcontoller: txtcustomer, isAddress: false, hint: 'Who are you selling to?'),
        SizedBox(height: 15,),
        Row(
          children: [
            Expanded(child: labelText_Box(name: 'GSTIN')),
            Expanded(child: labelText_Box(name: '   Place of Supply')),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(child: inputTextField(txtcontoller: txtCustGst, isAddress: false, hint:'GST6467AA65')),
            SizedBox(width: 20,),
            Expanded(child: inputTextField(txtcontoller: txtPLaceofsupply, isAddress: false, hint:'India')),
          ],
        ),
        SizedBox(height: 15,),
        labelText_Box(name: 'Address line'),
        SizedBox(height: 10,),
        inputTextField(txtcontoller: txtAddressline, isAddress: false, hint: 'Company address'),
        SizedBox(height: 15,),
        Row(
          children: [
            Expanded(child: labelText_Box(name: 'City')),
            Expanded(child: labelText_Box(name: '   Country')),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(child: inputTextField(txtcontoller: txtCustomerCity, isAddress: false, hint:'Surat')),
            SizedBox(width: 20,),
            Expanded(child: inputTextField(txtcontoller: txtCountry, isAddress: false, hint:'India')),
          ],
        ),
        SizedBox(height: 15,),
        labelText_Box(name: 'Zip/Postal Code'),
        SizedBox(height: 10,),
        inputTextField(txtcontoller: txtPostalcode, isAddress: false, hint: '395010'),
        SizedBox(height: 15,),
        GestureDetector(
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
            child: Text(
              "Done",
              style: TextStyle(
                  color: offwhite,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
          ),
        ),
      ],
    ),
  );
}