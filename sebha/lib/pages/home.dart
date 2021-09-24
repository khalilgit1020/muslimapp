import 'package:flutter/material.dart';
import 'package:sebha/pages/quraan.dart';
import 'package:sebha/pages/tsbeh.dart';
import 'package:sebha/pages/types_of_zikr.dart';
//import 'package:audioplayers/audioplayers.dart';


import 'stories_page.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: Stack(
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pressedCont('القرآن الكريم', (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Quraan('القرآن الكريم')));
                  }),/*
                  pressedCont('الأحاديث النبوية', (){
                    //  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Tasbeh()));
                  }),*/
                  pressedCont('أذكار وأدعية', (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TypesOfZikr()));
                  }),
                  pressedCont('سبحة إلكترونية', (){
                    // ignore: prefer_const_constructors
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Tasbeh()));
                  }),

                  pressedCont('قصص مختصرة', (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Storiesss('قصص مختصرة')));
                  }),
                ],
              ),
            ),
          ],
        ),
      )
    ;
  }
}

Container pressedCont(title,onPress){
  return Container(
    padding: const EdgeInsets.only(top: 8,bottom: 8),
    margin: const EdgeInsets.all(5),
    width: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
    ),
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: onPress,
      child: Text(
        title,style:const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500
      ),
      ),
    ),
  );
}