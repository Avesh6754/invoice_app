


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
  // profileImage = pw.MemoryImage(fileImage!.readAsBytesSync());
  // pw.Image(profileImage),
  pdf.addPage(pw.Page(
    margin: pw.EdgeInsets.zero,
    pageFormat: PdfPageFormat.a4,
    build: (context) {
      return
        pw.Padding(
          padding: pw.EdgeInsets.all(15),
          child: pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start,children: [

            pw.Align(
              alignment: pw.Alignment.center
              ,child:    pw.Text('Tax Invoice',style: pw.TextStyle(
                fontSize: 30, fontWeight: pw.FontWeight.bold)),
            ),
            pw.Row(children: [
              pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start,children: [
                pw.Text('From ${txtBusinessname.text}',
                    style: pw.TextStyle(
                        fontSize: 15, fontWeight: pw.FontWeight.bold)),
                pw.Text('${txtYourName.text}'),
                pw.Text('${txtGst.text}'),
                pw.Text('${txtDatefounder.text}'),
                pw.Text('${txtAddressline.text}'),
                pw.Text('${txtBusinessLoaction.text}'),
                pw.Text('${txtCity.text}'),
                pw.Text('${txtState.text}'),
                pw.Text('${txtPostalcode.text}'),
              ])
            ]),
            pw.SizedBox(height: 20),
            pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,children: [
              pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start,children: [
                pw.Text('To ${txtcustomer.text}',
                    style: pw.TextStyle(
                        fontSize: 15, fontWeight: pw.FontWeight.bold)),
                pw.Text('${txtCustGst.text}'),
                pw.Text('${txtAddressline.text}'),
                pw.Text('${txtPLaceofsupply.text}'),
                pw.Text('${txtCustomerCity.text}'),
                pw.Text('${txtCustomerState.text}'),
                pw.Text('${txtCountry.text}'),
                pw.Text('${txtZipcode.text}'),
              ]),
              pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end
                  ,
                  children: [
                    pw.Text('Invoice Number ${txtInvoiceNumber.text}'),
                    pw.Text('Invoice Date ${txtinvoice.text}'),
                    pw.Text('Due Date ${txtDueDate.text}'),
                  ])
            ]),
            pw.Container(
                child: pw.Column(children: [
                  pw.SizedBox(height: 10),
                 pw.Container(
                   color:PdfColors.grey,
                   child:  pw.Row(
                       mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                       children: [
                         pw.Text("Item Name",style: pw.TextStyle(color: PdfColors.white)),
                         pw.Spacer(),
                         pw.Text("Quantity",style: pw.TextStyle(color: PdfColors.white)),
                         pw.SizedBox(width: 20),
                         pw.Text("Rate",style: pw.TextStyle(color: PdfColors.white)),
                         pw.SizedBox(width: 20),
                         pw.Text("Amount",style: pw.TextStyle(color: PdfColors.white)),
                       ]),
                 ),
                  ...List.generate(
                    invoicecart.length,
                        (index) => pw.Column(children: [
                          pw.SizedBox(height: 10),
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text("${invoicecart[index].pro_title}",
                                maxLines: 1, overflow: pw.TextOverflow.clip),
                            pw.Spacer(),
                            pw.Text("${invoicecart[index].pro_qty}"),
                            pw.SizedBox(width: 45),
                            pw.Text("${invoicecart[index].pro_price}"),
                            pw.SizedBox(width: 45),
                            pw.Text("${invoicecart[index].pro_price}"),
                          ]),
                      pw.Divider(),
                          pw.SizedBox(height: 10),
                    ]),
                  ),

                ]
                )
            ),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Column(
                      children: [
                        pw.Text("Subtotal  : ${(payment() + Amount).toInt()}"),
                        pw.Text("Gst(18%)  : ${((payment() + Amount) * 18 / 100).toInt()}"),
                        pw.Text("Total  : ${(((payment() + Amount) * 18 / 100) + (payment() + Amount)).toInt()}")
                      ]
                  ),
                  pw.SizedBox(width: 20),
                ]
            ),
            pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children:
                [
                  pw.Text('Notes'),
                  pw.Text('${txtnote.text}'),
                  pw.SizedBox(height: 20),
                  pw.Text('Terms & Condition'),
                  pw.Text('${txtTerms.text}'),
                ]
            )
          ])
        );
    },
  ));
  return pdf.save();
}
