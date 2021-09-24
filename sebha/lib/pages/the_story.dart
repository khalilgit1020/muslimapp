// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TheStory extends StatefulWidget {
  final int i;
  final String title;
  final List list;

  TheStory(this.i, this.title, this.list);

  @override
  _TheStoryState createState() => _TheStoryState();
}

class _TheStoryState extends State<TheStory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          color: Colors.black54,
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(50,10,10,10),
                margin: const EdgeInsets.all(20),
                child: SelectableText(
                  widget.list[widget.i],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                  textScaleFactor: 1.1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
