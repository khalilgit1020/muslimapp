import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebha/model/azkar.dart';
import 'package:sebha/widgets/zikr_item.dart';

// ignore: use_key_in_widget_constructors
class TypesOfZikr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text(
            'الأذكار والأدعية',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.red,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
          ),
          child: GridView(
            padding:const EdgeInsets.all(15),
            gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            children: Dummy_Zikr.map((zikrItem) =>
                ZikrItem(zikrItem.id, zikrItem.title, zikrItem.color)
            ).toList(),
          ),
        ),
      ),
    );
  }
}
