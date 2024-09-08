import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../utils/global.dart';
import '../../Business_Page/component/businessText.dart';

Form customerDetails(BuildContext context) {
  return Form(
    key: fromkey,
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize:MainAxisSize.min,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment:
            MainAxisAlignment
                .spaceBetween,
            children: [
              TextButton(
                  onPressed: () {

                  },
                  child:  Text(
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
          const Divider(),
          const SizedBox(height: 15,),
          labelText_Box(name: "Customer Name"),
          const SizedBox(height: 10,),
          inputTextField(txtcontoller: txtcustomer, isAddress: false, hint: 'Who are you selling to?'),
          const SizedBox(height: 15,),
          Row(
            children: [
              Expanded(child: labelText_Box(name: 'GSTIN')),
              Expanded(child: labelText_Box(name: '   Place of Supply')),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: inputTextField(txtcontoller: txtCustGst, isAddress: false, hint:'GST6467AA65')),
              const SizedBox(width: 20,),
              Expanded(child: inputTextField(txtcontoller: txtPLaceofsupply, isAddress: false, hint:'India')),
            ],
          ),
          const SizedBox(height: 15,),
          labelText_Box(name: 'Address line'),
          const SizedBox(height: 10,),
          inputTextField(txtcontoller: txtAddressline, isAddress: false, hint: 'Company address'),
          const SizedBox(height: 15,),
          Row(
            children: [
              Expanded(child: labelText_Box(name: 'City')),
              Expanded(child: labelText_Box(name: '   Country')),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: inputTextField(txtcontoller: txtCustomerCity, isAddress: false, hint:'Surat')),
              const SizedBox(width: 20,),
              Expanded(child: inputTextField(txtcontoller: txtCountry, isAddress: false, hint:'India')),
            ],
          ),
          const SizedBox(height: 15,),
          labelText_Box(name: 'Zip/Postal Code'),
          const SizedBox(height: 10,),
          inputTextField(txtcontoller: txtPostalcode, isAddress: false, hint: '395010'),
          const SizedBox(height: 15,),
          GestureDetector(
            onTap: () {
              if (fromkey.currentState!.validate() )
              {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(

                    behavior: SnackBarBehavior.floating,
                    content: Text(
                      'Data Saved Successfully!',
                      style: TextStyle(fontSize: 16),
                    ),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: button,
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: const Text(
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
    ),
  );
}