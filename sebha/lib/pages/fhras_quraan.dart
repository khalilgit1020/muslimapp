import 'package:flutter/material.dart';
import 'package:sebha/model/names.dart';

// ignore: use_key_in_widget_constructors
class FhrasQuraan extends StatefulWidget {
  @override
  _FhrasQuraanState createState() => _FhrasQuraanState();
}

class _FhrasQuraanState extends State<FhrasQuraan> {
  //late int i;

  @override
  Widget build(BuildContext context) {
     var height =MediaQuery.of(context).size.height;
    // var width =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text(
            'فهرس القرآن الكريم',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),

        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8, top: 8,bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'رقم الصفحة',
                      style:  TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'عدد الآيات',
                      style:  TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'إسم السورة',
                      style:  TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              Container(
                width: double.infinity,
                height: height / 1.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                ),
                child: ListView.builder(
                  itemCount: NamesOfQuraan.names.length,
                  itemBuilder: (context, index) {

                    return Column(
                      children: [

                        listCont(
                            NamesOfQuraan.names[index],
                            NamesOfQuraan.numberOfAyat[index],
                            NamesOfQuraan.pageNumber[index]),
                        const Divider(thickness: 5,),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container listCont(title, numberAyat, pageNumber) {
    return  Container(
      padding:const EdgeInsets.only(left: 50,right: 10,top: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: 40,
              child: Text(
                pageNumber,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 const Text('|', style:  TextStyle(
                    fontSize: 20,
                  ),),
                 const SizedBox(width: 5,),
                  Text(
                    numberAyat,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('|', style:  TextStyle(
                    fontSize: 20,
                  ),),
                  const SizedBox(width: 5,),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ],

      ),
    );
  }
}
