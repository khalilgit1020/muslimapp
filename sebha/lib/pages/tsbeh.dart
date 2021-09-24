import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sebha/pages/types_of_zikr.dart';
import 'package:sebha/providerss/TasbehProvider.dart';

class Tasbeh extends StatefulWidget {
  const Tasbeh({ Key? key }) : super(key: key);

  @override
  _TasbehState createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {

  @override
  Widget build(BuildContext context) {
    int counter =Provider.of<TasbeehProvider>(context).counter;
    return SafeArea(
      child: Scaffold(
        /*appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 1,
        ),*/
        body: Container(
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/BGG.gif'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(counter.toString(),style:const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 50,
                  color: Colors.white,
                ),),
                const Text('عدد التسبيح',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                ),)
              ],
            ),
          ),
        ),
        floatingActionButton: Stack(
          children: [
            Padding(
              padding:const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton.extended(
                  icon:const Icon(Icons.settings_backup_restore),
                  label:const Text('تصفير',style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  onPressed: (){
                    Provider.of<TasbeehProvider>(context,listen: false).makeItZero();
                  },
                  heroTag: null,
                ),
              ),
            ),
            Align(
              alignment:const Alignment(0.1,0.7),
              child: FloatingActionButton.extended(
                icon:const Icon(Icons.fingerprint),
                label:const Text('تسبيح',style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                onPressed: (){
                  Provider.of<TasbeehProvider>(context,listen: false).increment();
                },
                heroTag: null,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                icon:const Icon(Icons.book),
                label:const Text('ذكر',style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TypesOfZikr()));
                },
                heroTag: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

