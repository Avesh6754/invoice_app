import 'package:flutter/material.dart';
import 'package:invoice_app/model/product_data.dart';


List<Invoice>invoiceProduct=[];
List<Invoice>invoicecart=[];
List addcart=[];
bool isContain=false;
GlobalKey<FormState> fromkey = GlobalKey<FormState>();

//business page

TextEditingController txtBusinessname=TextEditingController(text: 'Maruti Fashion');
TextEditingController txtYourName=TextEditingController(text: 'Mukesh Yadav');
TextEditingController txtGst=TextEditingController(text: 'GNIV56853J');
TextEditingController txtBusinessLoaction=TextEditingController(text: 'India');
TextEditingController txtDatefounder=TextEditingController(text: '20/10/2001');
TextEditingController txtAddress=TextEditingController(text: 'A/204 KUberjiWorld punagem surat');
TextEditingController txtCity=TextEditingController(text: 'Surat');
TextEditingController txtState=TextEditingController(text: 'Gujarat');
TextEditingController txtZipcode=TextEditingController(text: '395010m;lmk'

);

//invoice details

TextEditingController txtinvoice=TextEditingController();
TextEditingController txtDueDate=TextEditingController();
TextEditingController txtInvoiceNumber=TextEditingController();
TextEditingController txtCurrency=TextEditingController();
TextEditingController txtnote=TextEditingController();
TextEditingController txtTerms=TextEditingController();

// cutsomer details

TextEditingController txtcustomer=TextEditingController();
TextEditingController txtCustGst=TextEditingController();
TextEditingController txtPLaceofsupply=TextEditingController();
TextEditingController txtAddressline=TextEditingController();
TextEditingController txtCustomerCity=TextEditingController();
TextEditingController txtCustomerState=TextEditingController();
TextEditingController txtPostalcode=TextEditingController();
TextEditingController txtCountry=TextEditingController(text: 'Indian');

//bottom
double Amount = 0;

double payment() {
  double ans = 0;
  for (int i = 0; i < invoicecart.length; i++) {
    ans = ans + invoicecart[i].pro_price;
  }
  return ans;
}



