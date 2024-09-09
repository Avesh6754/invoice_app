


import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';


import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import '../../utils/global.dart';

class PdfView extends StatefulWidget {
  const PdfView({super.key});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
          pdfFileName: '${txtcustomer.text} resume',
          build: (format) => generatePdf()),
    );
  }
}


  Future<Uint8List> generatePdf() {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
      build: (context) =>
          pw.Column(children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text('Name', style: const pw.TextStyle(fontSize: 28)),
                pw.Text('Category', style: const pw.TextStyle(fontSize: 28)),
                pw.Text('Price', style: const pw.TextStyle(fontSize: 28)),
              ],
            ),
            pw.SizedBox(
              height: 24,
            ),
            // ...List.generate(
            //   invoiceList.length,
            //       (index) => pw.Row(
            //     mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            //     children: [
            //       pw.Text(
            //         '${invoiceList[index].name}',
            //         style: const pw.TextStyle(fontSize: 21),
            //       ),
            //       pw.Text(
            //         '${invoiceList[index].category}',
            //         style: const pw.TextStyle(fontSize: 21),
            //       ),
            //       pw.Text(
            //         '${invoiceList[index].prise}',
            //         style: const pw.TextStyle(fontSize: 21),
            //       )
            //     ],
            //   ),
            // ),
          ]),
    ));
    return pdf.save();
}
//
// Future<Uint8List> pdfGenerator() {
//   final pdf = pw.Document();
//   // profileImage = pw.MemoryImage(fileImage!.readAsBytesSync());
//   // pw.Image(profileImage),
//   pdf.addPage(pw.Page(
//     margin: pw.EdgeInsets.zero,
//     pageFormat: PdfPageFormat.a4,
//     build: (context) {
//       return
//         pw.Column(children: [
//
//           pw.Text('Tax Invoice'),
//           pw.Row(children: [
//             pw.Column(children: [
//               pw.Text('From ${txtBusinessname.text}',
//                   style: pw.TextStyle(
//                       fontSize: 25, fontWeight: pw.FontWeight.bold)),
//               pw.Text('${txtYourName.text}'),
//               pw.Text('${txtGst.text}'),
//               pw.Text('${txtDatefounder.text}'),
//               pw.Text('${txtAddressline.text}'),
//               pw.Text('${txtBusinessLoaction.text}'),
//               pw.Text('${txtCity.text}'),
//               pw.Text('${txtState.text}'),
//               pw.Text('${txtPostalcode.text}'),
//             ])
//           ]),
//           pw.Row(children: [
//             pw.Column(children: [
//               pw.Text('${txtcustomer.text}',
//                   style: pw.TextStyle(
//                       fontSize: 25, fontWeight: pw.FontWeight.bold)),
//               pw.Text('${txtCustGst.text}'),
//               pw.Text('${txtAddressline.text}'),
//               pw.Text('${txtPLaceofsupply.text}'),
//               pw.Text('${txtCustomerCity.text}'),
//               pw.Text('${txtCustomerState.text}'),
//               pw.Text('${txtCountry.text}'),
//               pw.Text('${txtZipcode.text}'),
//             ]),
//             pw.Column(children: [
//               pw.Text('Invoice Number ${txtInvoiceNumber.text}'),
//               pw.Text('Invoice Date ${txtinvoice.text}'),
//               pw.Text('Due Date ${txtDueDate.text}'),
//             ])
//           ]),
//           pw.Container(
//               color: PdfColors.grey,
//               child: pw.Column(children: [
//                 ...List.generate(
//                   invoicecart.length,
//                   (index) => pw.Column(children: [
//                     pw.Row(
//                         mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                         children: [
//                           pw.Text("Item Name",style: pw.TextStyle(color: PdfColors.white)),
//                           pw.Spacer(),
//                           pw.Text("Quantity",style: pw.TextStyle(color: PdfColors.white)),
//                           pw.Text("Rate",style: pw.TextStyle(color: PdfColors.white)),
//                           pw.Text("Amount",style: pw.TextStyle(color: PdfColors.white)),
//                         ]),
//                     pw.Row(
//                         mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                         children: [
//                           pw.Text("${invoicecart[index].pro_title}",
//                               maxLines: 1, overflow: pw.TextOverflow.clip),
//                           pw.Spacer(),
//                           pw.Text("${invoicecart[index].pro_qty}"),
//                           pw.Text("${invoicecart[index].pro_price}"),
//                           pw.Text("${invoicecart[index].pro_price}"),
//                         ]),
//                     pw.Divider()
//                   ]),
//                 ),
//
//               ]
//               )
//           ),
//           pw.Row(
//             children: [
//              pw.Column(
//                children: [
//                  pw.Text("Subtotal  : ${(payment() + Amount).toInt()}"),
//                  pw.Text("Gst(18%)  : ${((payment() + Amount) * 18 / 100).toInt()}"),
//                  pw.Text("Total  : ${(((payment() + Amount) * 18 / 100) + (payment() + Amount)).toInt()}")
//                ]
//              )
//             ]
//           ),
//           pw.Text('Notes'),
//           pw.Text('${txtnote.text}'),
//           pw.SizedBox(height: 20),
//           pw.Text('Terms & Condition'),
//           pw.Text('${txtTerms.text}'),
//         ]);
//     },
//   ));
//   return pdf.save();
// }
