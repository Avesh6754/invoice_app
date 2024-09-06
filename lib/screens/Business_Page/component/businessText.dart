import 'package:flutter/material.dart';
import 'package:invoice_app/utils/color.dart';

TextField inputTextField(
    {required TextEditingController txtcontoller, required bool isAddress,required String hint}) {
  return TextField(
    controller: txtcontoller,
    maxLines: (isAddress) ? 3 : 1,

    decoration: InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.grey.shade400
      ),
      border: const OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500, width: 1.2),
          borderRadius: BorderRadius.circular(15)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.blue, width: 1.5)),
    ),
  );
}

Text labelText_Box({required String name}) => Text(
      name,
      style:
          const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: offlabel),
    );
