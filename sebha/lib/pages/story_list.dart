// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sebha/pages/the_story.dart';
import 'package:sebha/providerss/story_list_provider.dart';

class StoryList extends StatefulWidget {
  final String title;

   // ignore: prefer_const_constructors_in_immutables
   StoryList(this.title);

  @override
  _StoryListState createState() => _StoryListState();
}

class _StoryListState extends State<StoryList> {

  get foundStory => Provider.of<StoryListProvider>(context).findTheList(widget.title);
  get foundStory2 => Provider.of<StoryListProvider>(context).findTheSecondList(widget.title);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title,style:const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          color: Colors.grey[300],
          child: ListView.builder(
            itemCount: foundStory.length,
            itemBuilder: (ctx,index){
              return _inkWell(
                  foundStory[index],
                      ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TheStory(index, foundStory[index], foundStory2))));
                //TheStory(index, foundStory[index], foundStory);

            },
          ),
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
        padding:const EdgeInsets.all(10),
        margin:const EdgeInsets.all(10),
        child: Text(
          title,
          style:const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),
          textAlign: TextAlign.center ,
        ),

        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(5, 5),
              blurRadius: 5,
            ),
          ],
        ),

      ),
    );
  }
}
