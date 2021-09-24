import 'package:flutter/material.dart';

class ZikrItemProvider with ChangeNotifier{

  void selectZikr(BuildContext context,String title) {
    if (title == 'دعاء للميت') {
      Navigator.of(context).pushNamed('prayToDeath');
      notifyListeners();
    }else{Navigator.of(context).pushNamed(
        'zikr',
        arguments: {
          'title': title,
        }
    );
    notifyListeners();
    }
  }
}