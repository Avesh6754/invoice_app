import 'package:flutter/material.dart';

List productList = [
  {

    'img': 'assets/image/phone1.png',
    'name': 'I Phone 15 Pro Max',
    'qty': 1,
    'price': 150000,
    "id": 41,
    'category':'Mobile'

  },
  {
    'imge': 'assets/image/phone3.png',
    'details': 'Samsung Galaxy M53',
    'qty': 1,
    'price': 12000,
    'category':'Mobile',
  "id": 40,
  },
  {

    'imge': 'assets/image/phone2.png',
    'name': 'Redmi 12 5G',
    'qty': 1,
    'price': 15500,
    "id": 38,
    'category':'Mobile'

  },
  {
    'imge': 'assets/images/headphone.png',
    'name': 'Boat immortal 1300',
    'category': "Earphone",
    'price': 1200,
    "id": 37,
    'qyt': 1,
  },
  {
    'imge': 'assets/images/Logitech.png',
    'name': 'logitech G502 Wirel',
    'price': 879,
    'qyt': 1,
    "id": 36,
    'category': "Earphone"
  },
  {
    'imge': 'assets/images/Black_ICE.png',
    'name': 'Ant Esports ICE',
    'price': 5599,
    'qyt': 1,
    "id": 35,
    'category': "Earphone"
  },
  {
    'name': 'Galaxy Watch 6 Classic',
    'prize1': 300.0,
    "qty": 1,
    'category': 'Watch',
    'imge': 'assets/image/img7.png',
    "id": 26,
  },
  {
    'name': ' Watch 6 Classic',
    'prize1': 305.0,
    "qty": 1,
    'category': 'Watch',
    'imge': 'assets/image/img21.png',
    "id": 28,
  },
  {
    "name": "New Balance Fresh",
    "qty": 1,
    'category': 'Shoes',
    "id": 25,
    "imge": "assets/image/NB_pro_10.jpeg",
    "price": 120.00
  },
  {
    "name": "N B Minimus Prevail",
    "qty": 1,
    'category': 'Shoes',
    "id": 24,
    "imge": "assets/image/NB_pro_9.jpeg",
    "price": 130.00
  },
  {
    "name": "N B Numeric 306",
    "qty": 1,
    "id": 23,
    'category': 'Shoes',
    "imge": "assets/image/NB_pro_7.jpeg",
    "price": 85.00
  },
  {
    "name": "N B Fresh Foam Roav",
    "qty": 1,
    "id": 22,
    'category': 'Shoes',
    "imge": "assets/image/NB_pro_6.jpeg",
    "price": 100.00
  },
  {
    "name": "New Balance v6",
    "qty": 1,
    "id": 21,
    'category': 'Shoes',
    "imge": "assets/image/NB_pro_5.jpeg",
    "price": 135.00
  },
  {
    "name": "Puma Cell Endura",
    "qty": 1,
    "id": 20,
    'category': 'Shoes',
    "imge": "assets/image/puma_pro_10.jpg",
    "price": 120.00
  },
  {
    "name": "Puma Thunder",
    "qty": 1,
    "id": 19,
    'category': 'Shoes',
    "imge": "assets/image/puma_pro_9.jpg",
    "price": 100.00
  },
  {
    "name": "Puma Tazon 6",
    "qty": 1,
    'category': 'Shoes',
    "id": 18,
    "imge": "assets/image/puma_pro_8.jpg",
    "price": 65.00
  },
  {
    "name": "Puma Speed 600",
    "qty": 1,
    "id": 18,
    'category': 'Shoes',
    "imge": "assets/image/puma_pro_7.jpg",
    "price": 130.00
  },
  {
    "name": "Puma Hybrid Astro",
    "qty": 1,
    "id": 17,
    'category': 'Shoes',
    "imge": "assets/image/puma_pro_6.jpg",
    "price": 100.00
  },
  {
    "name": "Asics Gel-Cumulus 23",
    "qty": 1,
    "id": 16,
    "imge": "assets/image/asice_pro_1.jpg",
    'category': 'Shoes',
    "price": 130.00
  },
  {
    "name": "Asics Dynablast",
    "qty": 1,
    'category': 'Shoes',
    "id": 15,
    "imge": "assets/image/asice_pro_2.jpg",
    "price": 100.00
  },
  {
    "name": "Asics Gel-Venture 8",
    "qty": 1,
    "id": 14,
    "imge": "assets/image/asice_pro_3.jpg",
    'category': 'Shoes',
    "price": 70.00
  },
  {
    "name": "Asics Novablast",
    "qty": 1,
    "id": 13,
    'category': 'Shoes',
    "imge": "assets/image/asice_pro_4.jpg",
    "price": 140.00
  },
  {
    "name": "Asics Gel-Excite 8",
    "qty": 1,
    'category': 'Shoes',
    "id": 12,
    "imge": "assets/image/asice_pro_5.jpg",
    "price": 75.00
  },
  {
    "name": "Asics Gel-Quantum",
    'category': 'Shoes',
    "qty": 1,
    "id": 11,
    "imge": "assets/image/asice_pro_4.jpg",
    "price": 150.00
  },
  {
    "name": "Asics Metaracer",
    "id": 10,
    'category': 'Shoes',
    "qty": 1,
    'category': 'Shoes',
    "imge": "assets/image/asice_pro_6.jpg",
    "price": 200.00
  },
  {
    "id": 1,
    "name": "Canon EOS 30D",
    "price": 1600,
    'category': 'Camera',
    "qty": 1,
    "imge": "assets/image/06.png",
  },
  {
    "id": 2,
    "name": "Nikon D850",
    "price": 3000,
    'category': 'Camera',
    "qty": 1,
    "imge": "assets/image/05.png",
  },
  {
    "id": 3,
    "name": "Sony Alpha",
    "price": 25000,
    'category': 'Camera',
    "qty": 1,
    "imge": "assets/image/04.png",
  },
  {
    "id": 4,
    "name": "Nikon Alpha",
    'category': 'Camera',
    "price": 2000,
    "qty": 1,
    "imge": "assets/image/03.png",
  },
  {
    "id": 5,
    "name": "Canon EOS R5",
    'category': 'Camera',
    "price": 35550,
    "qty": 1,
    "imge": "assets/image/01.png",
  },
  {
    "id": 1,
    'category': 'Camera',
    "name": "Nikon D850",
    "price": 3500,
    "qty": 1,
    "imge": "assets/image/02.png",
  },
];

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

