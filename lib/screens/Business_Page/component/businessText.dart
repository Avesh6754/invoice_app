import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';
TextField inputTextField({required TextEditingController txtcontoller,required bool isAddress}) {
  return TextField(
    controller: txtcontoller,
    maxLines: (isAddress)?3:1,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500, width: 1.2),
          borderRadius: BorderRadius.circular(15)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.blue, width: 1.5)),
    ),
  );
}

Text labelText_Box({required String name}) => Text(
  "$name",
  style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: offlabel),
);