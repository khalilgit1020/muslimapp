import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sebha/providerss/ReadQuraanProvider.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// ignore: use_key_in_widget_constructors
class ReadQuraan extends StatefulWidget {
  @override
  _ReadQuraanState createState() => _ReadQuraanState();
}

class _ReadQuraanState extends State<ReadQuraan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('القرآن الكريم',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child:  SfPdfViewer.asset(
          'assets/quran.pdf',
          key: Provider.of<ReadQuraanProvider>(context).pdfViewerKey,
          pageSpacing: 3,
        ),
      ),
    );
  }
}
