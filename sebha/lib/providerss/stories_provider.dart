import 'package:flutter/material.dart';

class StoriesProvider with ChangeNotifier{
   late String _title;
  String get title => _title;

  changeTitle(myTitle){
    _title = myTitle;
    notifyListeners();
  }

}