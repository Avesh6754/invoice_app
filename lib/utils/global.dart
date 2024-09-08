import 'package:flutter/material.dart';
import 'package:invoice_app/model/product_data.dart';


List<Invoice>invoiceProduct=[];
List invoicecart=[];
List addcart=[];

//business page

TextEditingController txtBusinessname=TextEditingController();
TextEditingController txtYourName=TextEditingController();
TextEditingController txtGst=TextEditingController();
TextEditingController txtBusinessLoaction=TextEditingController(text: 'India');
TextEditingController txtDatefounder=TextEditingController();
TextEditingController txtAddress=TextEditingController();
TextEditingController txtCity=TextEditingController();
TextEditingController txtState=TextEditingController();
TextEditingController txtZipcode=TextEditingController();

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


