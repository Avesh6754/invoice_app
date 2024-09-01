import 'package:flutter/material.dart';

List productList = [
  {
    'img': 'assets/image/product/jblheadphone.png',
    'name': 'JBL Headphone',
    'prise': 5000,
    'sold': 8934,
    'rate': 5.2,
  },
  {
    'img': 'assets/image/product/boatheadphone.png',
    'name': 'Boat Headphone',
    'prise': 3000,
    'sold': 6771,
    'rate': 6.0,
  },
  {
    'img': 'assets/image/product/boat.png',
    'name': 'Boat Eardopes',
    'prise': 3500,
    'sold': 6924,
    'rate': 5.9,
  },
  {
    'img': 'assets/image/product/bluetooth.png',
    'name': 'Boat Bluetooth',
    'prise': 2500,
    'sold': 8644,
    'rate': 5.3,
  },
  {
    'img': 'assets/image/product/sonyheadphone.png',
    'name': 'Sony Headphone',
    'prise': 5000,
    'sold': 10032,
    'rate': 6.2,
  },
  {
    'img': 'assets/image/product/speaker.png',
    'name': 'JBL Speaker',
    'prise': 6000,
    'sold': 9432,
    'rate': 5.7,
  },
  {
    'img': 'assets/image/product/camera2.png',
    'name': 'Canon Camera',
    'prise': 4500,
    'sold': 9054,
    'rate': 5.2,
  },
  {
    'img': 'assets/image/product/sonycamera.png',
    'name': 'Sony Camera',
    'prise': 4000,
    'sold': 8334,
    'rate': 7.2,
  },
  {
    'img': 'assets/image/product/panasonic camera.png',
    'name': 'Lumix Camera',
    'prise': 3500,
    'sold': 7992,
    'rate': 5.5,
  },
  {
    'img': 'assets/image/product/camera.png',
    'name': 'Fuji film Camera',
    'prise': 3500,
    'sold': 8534,
    'rate': 4.9,
  },
  {
    'img': 'assets/image/product/watch.png',
    'name': 'Smart Watch',
    'prise': 4000,
    'sold': 8934,
    'rate': 5.8,
  },
  {
    'img': 'assets/image/product/microphone.png',
    'name': 'Rod Microphone',
    'prise': 3500,
    'sold': 7644,
    'rate': 5.7,
  },
  {
    'img': 'assets/image/product/laptop.png',
    'name': 'MSI Laptop',
    'prise': 50000,
    'sold': 18347,
    'rate': 8.7,
  },
  {
    'img': 'assets/image/product/hplaptop.png',
    'name': 'HP Laptop',
    'prise': 60000,
    'sold': 18347,
    'rate': 8.6,
  },
  {
    'name': 'Noice Cancelling\nHeadphones',
    'price': 249.95,
    'discount': '15',
    'image':
        'assets/images/Product-images/beats-noice-cancelling-headphones.png',
    'cart': 'Add to cart'
  },
  {
    'name': 'Classic All Day\nHeadphones',
    'price': 289.9,
    'discount': '10',
    'image': 'assets/images/Product-images/beats-classic-headphones-2.png',
    'cart': 'Add to cart'
  },
  {
    'name': 'Boat Rockerz 450R\nHeadphones',
    'price': 269.95,
    'discount': '5',
    'image': 'assets/images/Product-images/Boat-rockerz-450R.png',
    'cart': 'Add to cart'
  },
  {
    'name': 'JBL Pro\nHeadphones',
    'price': 275.95,
    'discount': '20',
    'image': 'assets/images/Product-images/Jbl-headphones.png',
    'cart': 'Add to cart'
  },
  {
    'name': 'Sony wh-h900n\nHeadphones',
    'price': 295.95,
    'discount': '25',
    'image': 'assets/images/Product-images/Sony-headphones-wh-h900n.png',
    'cart': 'Add to cart'
  },
  {
    'name': 'Beats Studio 3\nHeadphones',
    'price': 269.95,
    'discount': '25',
    'image': 'assets/images/Product-images/beats Studio 3.png',
    'cart': 'Add to cart'
  },
  {
    'name': 'Beats studio pro\nHeadphones',
    'price': 215.95,
    'discount': '25',
    'image': 'assets/images/Product-images/Beats wireless dre studio.png',
    'cart': 'Add to cart'
  },
  {
    'name': 'Boat rockerz 650\nHeadphones',
    'price': 225.95,
    'discount': '25',
    'image': 'assets/images/Product-images/Boat rockerz 650 sunburn.png',
    'cart': 'Add to cart'
  },
  {
    'name': 'JBL Neo pro\nHeadphones',
    'price': 245.95,
    'discount': '25',
    'image': 'assets/images/Product-images/JBL Neo pro.png',
    'cart': 'Add to cart'
  },
  {
    'name': 'Sony bordeaux pink\nHeadphones',
    'price': 299.99,
    'discount': '25',
    'image': 'assets/images/Product-images/Sony bordeaux pink.png',
    'cart': 'Add to cart'
  },
  {
    'total': 0,
    'img': 'assets/mobileImg/phone1.png',
    'details': 'I Phone 15 Pro Max',
    'qty': 1,
    'price': 150000,
    'cartBool': false,
  },
  {
    'total': 0,
    'img': 'assets/mobileImg/phone3.png',
    'details': 'Samsung Galaxy M53',
    'qty': 1,
    'price': 12000,
    'cartBool': false,
  },
  {
    'total': 0,
    'img': 'assets/mobileImg/phone2.png',
    'details': 'Redmi 12 5G',
    'qty': 1,
    'price': 15500,
    'cartBool': false,
  },
  {
    'img': 'assets/images/headphone.png',
    'name': 'Boat immortal 1300',
    'price': 1200,
    'qut': 1,
  },
  {
    'img': 'assets/images/Logitech.png',
    'name': 'logitech G502 Wirel',
    'price': 879,
    'qut': 1
  },
  {
    'img': 'assets/detailsimg/dualsense.png',
    'name': 'Sony Dualsnese Co.',
    'price': 11299,
    'qut': 1
  },
  {
    'img': 'assets/images/Black_ICE.png',
    'name': 'Ant Esports ICE',
    'price': 5599,
    'qut': 1
  },
  {
    'Image': 'asset/img/product image/img21.png',
    'name': 'Galaxy Watch 6 Classic',
    'prize1': 300.0,
    'prize': 140.0,
    'rating': 3.6,
    'public': 1523,
    'qty': 1,
  },
  {
    'Image': 'asset/img/product image/img1.png',
    'name': 'the smart Oxford collar shirt',
    'prize1': 500.0,
    'prize': 300.0,
    'rating': 4.0,
    'public': 2372,
    'qty': 1,
  },
  {
    'Image': 'asset/img/product image/img3.png',
    'name': 'Clinique Happy™ For Men Cologne Spray',
    'prize1': 225.0,
    'prize': 70.0,
    'rating': 3.8,
    'public': 6535,
    'qty': 1,
  },
  {
    'Image': 'asset/img/product image/img4.png',
    'name': 'UA Unisex Project Rock 6 \'The Bull\'',
    'prize1': 1200.0,
    'prize': 980.0,
    'rating': 4.0,
    'public': 6563,
    'qty': 1,
  },
  {
    "name": "Nike Dunk Low",
    "image": "assets/image/nike_pro__5.jpg",
    "details":
        "The Nike Dunk Low features a classic silhouette with premium materials for a stylish and comfortable fit.",
    "price": 110.00
  },
  {
    "name": "Nike React",
    "image": "assets/image/nike_pro_3.jpeg",
    "details":
        "Designed for a smooth ride, the Nike React Infinity Run Flyknit provides responsive cushioning and a breathable upper.",
    "price": 160.00
  },
  {
    "name": "Nike Air Max 270",
    "image": "assets/image/nike_pro_1.png",
    "details":
        "The Nike Air Max 270 features a large Air unit for superior comfort and a sleek, modern design.",
    "price": 150.00
  },
  {
    "name": "Nike Air Force 1",
    "image": "assets/image/nike_pro_2.jpg",
    "details":
        "The Nike Air Force 1 is an iconic shoe with a classic design, offering durable leather construction and responsive cushioning.",
    "price": 90.00
  },
  {
    "name": "Nike Blazer",
    "image": "assets/image/nike_pro_4.jpeg",
    "details":
        "The Nike Blazer Mid '77 offers a retro style with a durable leather and synthetic upper for a premium look and feel.",
    "price": 100.00
  },
  {
    "name": "Nike ZoomX",
    "image": "assets/image/nike_pro_6.jpeg",
    "details":
        "The Nike ZoomX Vaporfly NEXT% is engineered for speed with a lightweight design and responsive cushioning for a race-day advantage.",
    "price": 250.00
  },
  {
    "name": "Nike Pegasus Trail",
    "image": "assets/image/nike_pro_7.jpeg",
    "details":
        "The Nike Pegasus Trail 3 provides a rugged design with a durable outsole for off-road running and hiking.",
    "price": 130.00
  },
  {
    "name": "Nike Metcon 7",
    "image": "assets/image/nike_pro_8.jpeg",
    "details":
        "The Nike Metcon 7 is built for high-intensity training, offering stability and durability with a flexible sole.",
    "price": 130.00
  },
  {
    "name": "Nike Air Zoom ",
    "image": "assets/image/nike_pro_9.jpeg",
    "details":
        "The Nike Air Zoom Pegasus 38 delivers a responsive ride with a breathable upper and a secure fit for daily runs.",
    "price": 120.00
  },
  {
    "name": "Nike Mercurial",
    "image": "assets/image/nike_pro_10.jpeg",
    "details":
        "The Nike Mercurial Superfly 8 Elite soccer cleats offer explosive speed and precise control with a lightweight design and innovative traction.",
    "price": 275.00
  },
  {
    "name": "Adidas Ultraboost 22",
    "image": "assets/image/adidas_pro_1.jpeg",
    "details":
        "Experience the ultimate comfort and performance with the Adidas Ultraboost 22, featuring a responsive Boost midsole.",
    "price": 180.00
  },
  {
    "name": "Adidas NMD_R1",
    "image": "assets/image/adidas_pro_2.jpg",
    "details":
        "The Adidas NMD_R1 blends heritage style with innovative design, perfect for urban adventures.",
    "price": 140.00
  },
  {
    "name": "Adidas Stan Smith",
    "image": "assets/image/adidas_pro_3.jpg",
    "details":
        "The iconic Adidas Stan Smith shoes are made with a classic and clean design, featuring a premium leather upper.",
    "price": 85.00
  },
  {
    "name": "Adidas Superstar",
    "image": "assets/image/adidas_pro_4.png",
    "details":
        "Adidas Superstar shoes offer timeless style and comfort with a classic shell-toe design and leather upper.",
    "price": 90.00
  },
  {
    "name": "Adidas Yeezy Boost",
    "image": "assets/image/adidas_pro_5.jpg",
    "details":
        "The Adidas Yeezy Boost 350 V2 provides a stylish and comfortable fit with its Primeknit upper and Boost midsole.",
    "price": 220.00
  },
  {
    "name": "Adidas Gazelle",
    "image": "assets/image/adidas_pro_6.jpg",
    "details":
        "The Adidas Gazelle shoes offer a sleek and versatile design with a suede upper and classic silhouette.",
    "price": 80.00
  },
  {
    "name": "Adidas ZX 2K Boost",
    "image": "assets/image/adidas_pro_7.jpg",
    "details":
        "The Adidas ZX 2K Boost combines modern style with superior comfort, featuring a responsive Boost midsole.",
    "price": 150.00
  },
  {
    "name": "Adidas Adilette Slides",
    "image": "assets/image/adidas_pro_8.jpg",
    "details":
        "The Adidas Adilette Slides are perfect for casual wear, offering a comfortable fit with a contoured footbed.",
    "price": 45.00
  },
  {
    "name": "Adidas Terrex ",
    "image": "assets/image/adidas_pro_9.jpg",
    "details":
        "The Adidas Terrex Free Hiker provides durability and comfort for outdoor adventures, featuring a waterproof GORE-TEX membrane.",
    "price": 200.00
  },
  {
    "name": "Adidas Predator",
    "image": "assets/image/adidas_pro_10.jpg",
    "details":
        "The Adidas Predator Freak.1 soccer cleats offer superior control and precision with a Demonskin upper and a lightweight outsole.",
    "price": 250.00
  },
  {
    "name": "New Balance 990v5",
    "image": "assets/image/NB_pro_1.jpg",
    "details":
        "The New Balance 990v5 offers a blend of cushioning and stability with a sleek, modern design.",
    "price": 175.00
  },
  {
    "name": "New Balance Fresh",
    "image": "assets/image/NB_pro_2.jpg",
    "details":
        "Experience premium cushioning with the New Balance Fresh Foam 1080v11, designed for ultimate comfort during runs.",
    "price": 150.00
  },
  {
    "name": "New Balance 574",
    "image": "assets/image/NB_pro_3.jpg",
    "details":
        "The New Balance 574 features a classic silhouette with a suede and mesh upper for a stylish and comfortable fit.",
    "price": 80.00
  },
  {
    "name": "N B FuelCell Rebel v2",
    "image": "assets/image/NB_pro_4.jpg",
    "details":
        "The New Balance FuelCell Rebel v2 provides responsive cushioning and a lightweight design for high-speed performance.",
    "price": 130.00
  },
  {
    "name": "New Balance 997H",
    "image": "assets/image/NB_pro_5.jpeg",
    "details":
        "The New Balance 997H offers a retro-inspired design with a lightweight construction and comfortable fit.",
    "price": 90.00
  },
  {
    "name": "New Balance Fresh",
    "image": "assets/image/NB_pro_6.jpeg",
    "details":
        "The New Balance Fresh Foam Beacon v3 delivers a cushioned and responsive ride with a breathable upper.",
    "price": 120.00
  },
  {
    "name": "N B Minimus Prevail",
    "image": "assets/image/NB_pro_7.jpeg",
    "details":
        "The New Balance Minimus Prevail is designed for training with a low-profile silhouette and flexible sole.",
    "price": 130.00
  },
  {
    "name": "N B Numeric 306",
    "image": "assets/image/NB_pro_8.jpeg",
    "details":
        "The New Balance Numeric 306 is a skate shoe offering durability and board feel with a suede and canvas upper.",
    "price": 85.00
  },
  {
    "name": "N B Fresh Foam Roav",
    "image": "assets/image/NB_pro_9.jpg",
    "details":
        "The New Balance Fresh Foam Roav provides all-day comfort with a cushioned midsole and a sleek design.",
    "price": 100.00
  },
  {
    "name": "New Balance v6",
    "image": "assets/image/NB_pro_10.jpg",
    "details":
        "The New Balance Hierro v6 is built for trail running, featuring a rugged outsole and a protective upper.",
    "price": 135.00
  },
  {
    "name": "Puma Suede Classic",
    "image": "assets/image/puma_pro_1.jpg",
    "details":
        "The Puma Suede Classic features a timeless design with a premium suede upper and comfortable fit.",
    "price": 70.00
  },
  {
    "name": "Puma RS-X3",
    "image": "assets/image/puma_pro_2.jpg",
    "details":
        "The Puma RS-X3 combines retro style with modern materials for a bold and comfortable look.",
    "price": 110.00
  },
  {
    "name": "Puma Future Rider",
    "image": "assets/image/puma_pro_3.jpg",
    "details":
        "The Puma Future Rider offers a lightweight and comfortable design with a shock-absorbing midsole.",
    "price": 80.00
  },
  {
    "name": "Puma Cali",
    "image": "assets/image/puma_pro_4.jpeg",
    "details":
        "The Puma Cali provides a fresh take on the classic silhouette with a modern twist and premium materials.",
    "price": 90.00
  },
  {
    "name": "Puma Ignite",
    "image": "assets/image/puma_pro_5.jpg",
    "details":
        "The Puma Ignite Flash EvoKNIT offers a sleek design with a knitted upper and responsive cushioning.",
    "price": 75.00
  },
  {
    "name": "Puma Cell Endura",
    "image": "assets/image/puma_pro_6.jpg",
    "details":
        "The Puma Cell Endura features a distinctive chunky silhouette with superior cushioning and support.",
    "price": 120.00
  },
  {
    "name": "Puma Thunder",
    "image": "assets/image/puma_pro_7.jpg",
    "details":
        "The Puma Thunder Spectra combines bold colors and a chunky design for a statement-making look.",
    "price": 100.00
  },
  {
    "name": "Puma Tazon 6",
    "image": "assets/image/puma_pro_8.jpg",
    "details":
        "The Puma Tazon 6 offers a sleek and sporty design with a comfortable and supportive fit.",
    "price": 65.00
  },
  {
    "name": "Puma Speed 600",
    "image": "assets/image/puma_pro_9.jpg",
    "details":
        "The Puma Speed 600 Fusefit provides a customizable fit with a knitted upper and responsive cushioning.",
    "price": 130.00
  },
  {
    "name": "Puma Hybrid Astro",
    "image": "assets/image/puma_pro_10.jpg",
    "details":
        "The Puma Hybrid Astro combines two innovative midsole technologies for superior cushioning and energy return.",
    "price": 100.00
  },
  {
    "name": "Asics Gel-Kayano 28",
    "image": "assets/image/asice_pro_1.jpeg",
    "details":
        "The Asics Gel-Kayano 28 provides superior stability and cushioning for long-distance running.",
    "price": 160.00
  },
  {
    "name": "Asics Gel-Nimbus 23",
    "image": "assets/image/asice_pro_2.jpg",
    "details":
        "Experience premium comfort with the Asics Gel-Nimbus 23, designed for neutral runners.",
    "price": 150.00
  },
  {
    "name": "Asics GT-2000 9",
    "image": "assets/image/asice_pro_3.jpeg",
    "details":
        "The Asics GT-2000 9 offers excellent support and cushioning for overpronators.",
    "price": 120.00
  },
  {
    "name": "Asics Gel-Cumulus 23",
    "image": "assets/image/asice_pro_4.jpg",
    "details":
        "The Asics Gel-Cumulus 23 provides a smooth and comfortable ride for everyday training.",
    "price": 130.00
  },
  {
    "name": "Asics Dynablast",
    "image": "assets/image/asice_pro_5.jpg",
    "details":
        "The Asics Dynablast features a responsive and bouncy ride with a sleek design.",
    "price": 100.00
  },
  {
    "name": "Asics Gel-Venture 8",
    "image": "assets/image/asice_pro_6.jpg",
    "details":
        "The Asics Gel-Venture 8 is perfect for trail running, offering durability and traction.",
    "price": 70.00
  },
  {
    "name": "Asics Novablast",
    "image": "assets/image/asice_pro_7.jpeg",
    "details":
        "The Asics Novablast delivers a lightweight and energetic ride for long-distance running.",
    "price": 140.00
  },
  {
    "name": "Asics Gel-Excite 8",
    "image": "assets/image/asice_pro_8.jpg",
    "details":
        "The Asics Gel-Excite 8 offers a comfortable and breathable design for daily runs.",
    "price": 75.00
  },
  {
    "name": "Asics Gel-Quantum",
    "image": "assets/image/asice_pro_9.jpeg",
    "details":
        "The Asics Gel-Quantum 360 provides 360-degree GEL technology cushioning for maximum comfort.",
    "price": 150.00
  },
  {
    "name": "Asics Metaracer",
    "image": "assets/image/asice_pro_10.jpg",
    "details":
        "The Asics Metaracer is designed for speed, featuring a carbon plate and lightweight construction.",
    "price": 200.00
  },
  {
      "id": 1,
      "name": "Canon EOS 30D",
      "price": 1600,
      "description":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
      "quantity": 1,
      "link": "assets/image/01.png",
      "fav": false,
      "check": true,
    },
    {
      "id": 2,
      "name": "Nikon D850",
      "price": 3000,
      "description":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
      "quantity": 1,
      "link": "assets/image/04.png",
      "fav": false,
      "check": true,
    },
    {
      "id": 3,
      "name": "Sony Alpha",
      "price": 25000,
      "description":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
      "quantity": 1,
      "link": "assets/image/09.png",
      "fav": false,
      "check": true,
    },
    {
      "id": 4,
      "name": "Nikon Alpha",
      "price": 2000,
      "description":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
      "quantity": 1,
      "link": "assets/image/05.png",
      "fav": false,
      "check": true,
    },
    {
      "id": 5,
      "name": "Canon EOS R5",
      "price": 3500,
      "description":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
      "quantity": 1,
      "link": "assets/image/07.png",
      "fav": false,
      "check": true,
    },
    {
      "id": 6,
      "name": "Nikon D850",
      "price": 3500,
      "description":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
      "quantity": 1,
      "link": "assets/image/02.png",
      "fav": false,
      "check": true,
    },
];
