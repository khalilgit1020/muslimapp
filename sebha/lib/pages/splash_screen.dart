import 'dart:async';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SplashScre extends StatefulWidget {
  @override
  _SplashScreState createState() => _SplashScreState();
}

class _SplashScreState extends State<SplashScre> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(const Duration(seconds: 3), (){
     Navigator.of(context).pushNamedAndRemoveUntil('home', (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/MBG.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
                // ignore: avoid_unnecessary_containers
                Container(
                 child: Column(
                   children:const[
                      CircleAvatar(
                       radius: 70,
                       backgroundColor: Colors.white,
                       child:Image(
                         image: AssetImage('assets/images/LANCHUR.png'),
                         width: 100,
                         height: 100,
                       ),
                     ),
                     Text(
                       'سبح اسم ربك الأعلى',style: TextStyle(
                       fontSize: 30,
                       //fontWeight: FontWeight.w700,
                       color: Colors.white
                     ),),
                   ],
                 ),
               ),
              const SizedBox(height: 300,),
              const Padding(
                padding: EdgeInsets.only(bottom: 80),
              ),
              const CircularProgressIndicator(
                color: Colors.white,
              ),
              const Text(
                'إقطع الإنترنت لتجنب الإعلانات',style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
                textAlign: TextAlign.center,
              ),

            ],
          ),
        ],
      ),
    );
  }
}
