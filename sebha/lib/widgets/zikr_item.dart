// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sebha/providerss/zikr_item_provider.dart';

class ZikrItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  // ignore: prefer_const_constructors_in_immutables
  ZikrItem(this.id, this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(right: 25,top: 25,bottom: 5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.5), color.withOpacity(0.7), color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        onTap:()=> Provider.of<ZikrItemProvider>(context,listen: false).selectZikr(context, title),
        splashColor: Theme.of(context).primaryColor,
        child:Text(
        title,
        style: Theme.of(context).textTheme.headline6,
        textDirection:TextDirection.rtl ,
      ),
      ),
    );
  }
}