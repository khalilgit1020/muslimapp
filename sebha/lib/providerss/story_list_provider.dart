import 'package:flutter/material.dart';
import 'package:sebha/model/stories.dart';

class StoryListProvider with ChangeNotifier{



  List? findTheList (title){
    if(title == 'قصص الأنبياء') {
      return Stories.prophets;
      // ignore: dead_code
      notifyListeners();
    }
    if(title == 'قصص الصحابة والتابعين') {
      return Stories.friends;
      // ignore: dead_code
      notifyListeners();
    }
    return null;
    // ignore: dead_code
    notifyListeners();
  }


  List? findTheSecondList (title){
    if(title == 'قصص الأنبياء') {
      return Stories.prophetStory;
      // ignore: dead_code
      notifyListeners();
    }
    if(title == 'قصص الصحابة والتابعين') {
      return Stories.friendsStory;

      // ignore: dead_code
      notifyListeners();
    }
    return null;

    // ignore: dead_code
    notifyListeners();
  }

}