// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:sebha/model/azkar.dart';

class PrayToDeath extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
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
             Column(
                mainAxisAlignment: MainAxisAlignment.center,
               // crossAxisAlignment: CrossAxisAlignment.center,
                children:Type_Death.map((deathItem) =>
                    DeathItem(deathItem.id, deathItem.title,deathItem.color)
                ).toList(),
              ),

          ],
        ),
      ),
    );
  }
/*

  Container pressedCont(title,onPress){
    return Container(
      padding: const EdgeInsets.only(top: 8,bottom: 8),
      margin: const EdgeInsets.all(5),
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: FlatButton(
        onPressed:onPress,
        child: Text(
          title,style:const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
        ),
        ),
      ),
    );
  }
*/

}

class DeathItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  DeathItem( this.id, this.title, this.color);

  void selectType(BuildContext ctx) {

    Navigator.of(ctx).pushNamed(
        'zikr',
        arguments: {
          'id': id,
          'title': title,
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> selectType(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        width: 250,
        padding:const EdgeInsets.all(15),
        margin:const EdgeInsets.all(15),
        child: Text(
          title,
          style:const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w500
          ),
          textDirection:TextDirection.rtl ,
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),

      ),
    );
  }
}





