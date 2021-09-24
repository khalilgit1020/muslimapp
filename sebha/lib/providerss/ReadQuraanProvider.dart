// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReadQuraanProvider with ChangeNotifier{

  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  get pdfViewerKey => _pdfViewerKey;

}