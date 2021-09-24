// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sebha/pages/story_list.dart';
import 'package:sebha/providerss/stories_provider.dart';

class Storiesss extends StatefulWidget {
  final String myName;

  // ignore: prefer_const_constructors_in_immutables
  Storiesss(this.myName);
  @override
  _StoriesssState createState() => _StoriesssState();
}

class _StoriesssState extends State<Storiesss> {
  @override
  Widget build(BuildContext context) {
    late var title= Provider.of<StoriesProvider>(context).title;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.myName,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Colors.white),
          ),
          backgroundColor: Colors.black87,
          centerTitle: true,
          elevation: 0,
        ),
        body:  Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image:  AssetImage('assets/images/q.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               _inkWell('قصص الأنبياء',(){
                 Provider.of<StoriesProvider>(context,listen: false).changeTitle('قصص الأنبياء');
                 Navigator.of(context).push(MaterialPageRoute(builder: (_)=>StoryList(title)));
               }),
               _inkWell('قصص الصحابة والتابعين',(){
                 setState(() {
                   title = 'قصص الصحابة والتابعين';
                 });
                 Navigator.of(context).push(MaterialPageRoute(builder: (_)=>StoryList(title)));
               }),
             ],
            ),

          ],
        ),
      ),
    );
  }
  InkWell _inkWell(title,press){
    return InkWell(
      onTap:press,
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        width: 250,
        padding:const EdgeInsets.all(15),
        margin:const EdgeInsets.all(15),
        child: Text(
          title,
          style:const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),
          textAlign: TextAlign.center ,
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),

      ),
    );
  }
}
