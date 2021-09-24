// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sebha/pages/fhras_quraan.dart';
import 'package:sebha/pages/read_quraan.dart';

class Quraan extends StatelessWidget {
  final String title;

   // ignore: prefer_const_constructors_in_immutables
   Quraan(this.title);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Colors.white),
          ),
          backgroundColor: Colors.black87,
          centerTitle: true,
          elevation: 0,
        ),
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
                  pressedCont('قراءة القرآن الكريم', (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ReadQuraan()));
                  }),
                  /*pressedCont('سماع القرآن الكريم', (){
                   // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ListenQ()));
                  }),*/
                  pressedCont('فهرس القرآن الكريم', (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FhrasQuraan()));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container pressedCont(title,onPress){
  return Container(
    padding: const EdgeInsets.only(top: 8,bottom: 8),
    margin: const EdgeInsets.all(5),
    width: 250,
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