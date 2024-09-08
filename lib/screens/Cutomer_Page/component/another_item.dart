import 'package:flutter/material.dart';

import '../../../utils/color.dart';

Row add_another_item() {
  return const Row(
    children: [
      SizedBox(
        width: 10,
      ),
      Icon(
        Icons.add_circle,
        color: button,
        size: 30,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        "Add Another Item",
        style: TextStyle(
            fontSize: 20,
            color: button,
            fontWeight: FontWeight.w500),
      ),
      SizedBox(
        width: 10,
      ),
    ],
  );
}