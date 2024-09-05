import 'package:flutter/material.dart';

class Invoice{
   String? pro_title,pro_category,pro_Image;
  // late int pro_qty,pro_id;
  // late  double pro_price;

  Invoice(this.pro_category,this.pro_Image,this.pro_title);

  factory Invoice.fromMap(Map m1)
  {
    return Invoice(m1['category'], m1['image'], m1['title']);
  }
}