# invoice_app

A new Flutter project.
# Invoice App

Invoice App is a Flutter application designed for creating and managing invoices efficiently. The app allows users to add products, generate detailed invoices, and export them as PDF files for easy sharing and printing. It's ideal for small business owners, freelancers, and anyone in need of reliable billing solutions.

## Features

- **Product Management:** Add products with details such as name, description, quantity, and price.
- **Invoice Creation:** Create invoices that include customer and company details along with an itemized list of products.
- **PDF Export:** Generate and export invoices as PDF files.
- **Invoice Overview:** Manage and view a list of all created invoices.

## Installation

### Prerequisites

- Flutter 3.0.0 or higher
- Dart 2.14.0 or higher

### Setup

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/yourusername/invoice-app.git
    cd invoice-app
    ```

2. **Install Dependencies:**

    ```bash
    flutter pub get
    ```

3. **Run the App:**

    ```bash
    flutter run
    ```

## Usage

### Adding Products

1. Navigate to the "Add Product" screen.
2. Enter the following product details:
   - Product Name
   - Description
   - Quantity
   - Price
3. Save the product to include it in the invoice.

### Creating an Invoice

1. Go to the "Create Invoice" screen.
2. Input customer and company information.
3. Select products to add to the invoice.
4. Preview and finalize the invoice details.

### Generating PDFs

1. On the finalized invoice, tap the "Export as PDF" button.
2. Choose a location on your device to save the generated PDF file.

### Managing Invoices

1. Access the "Invoices" section to view all created invoices.
2. View, share, or delete invoices as needed.

## Example Code

### Adding a Product

Here's a basic example of adding a product in Flutter:

```dart
import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  void _addProduct() {
    // Logic to add product to a list or database
    print('Product added: ${_nameController.text}, ${_descriptionController.text}, ${_quantityController.text}, ${_priceController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Product Name')),
            TextField(controller: _descriptionController, decoration: InputDecoration(labelText: 'Description')),
            TextField(controller: _quantityController, decoration: InputDecoration(labelText: 'Quantity'), keyboardType: TextInputType.number),
            TextField(controller: _priceController, decoration: InputDecoration(labelText: 'Price'), keyboardType: TextInputType.number),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _addProduct, child: Text('Add Product'))
          ],
        ),
      ),
    );
  }
}




![success](https://github.com/user-attachments/assets/232e5b94-9c9e-4f98-aef6-ecedbb7e49c4)
![Screenshot_20240909_082322](https://github.com/user-attachments/assets/a4a96c39-1ab9-4719-a3a2-7cc9fadb26ae)

![Screenshot_20240909_082303](https://github.com/user-attachments/assets/9fd2eed2-300c-447d-99f5-0cceda8f3bc5)
![ob2](https://github.com/user-attachments/assets/9a07dede-210b-4b57-84fd-60ff7f23f697)
![ob](https://github.com/user-attachments/assets/9d56a500-810f-466f-9567-66e0235f61de)
![bsinrss](https://github.com/user-attachments/assets/7b39ce1a-7c57-4409-b407-ba97f5a51361)
![cust](https://github.com/user-attachments/assets/ec83bd05-d51b-49ae-b5c4-16ee6957d913)
![ivoice](https://github.com/user-attachments/assets/e517c5cb-4048-4f4f-90ba-585445c9d810)
![logo](https://github.com/user-attachments/assets/16eedc91-5b4d-4d97-ac4f-a1fa10cf48d6)
