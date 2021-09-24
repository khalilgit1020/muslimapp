import 'package:flutter/material.dart';
import 'package:sebha/model/azkar.dart';

// ignore: use_key_in_widget_constructors
class Zikr extends StatefulWidget {
  @override
  State<Zikr> createState() => _ZikrState();
}

class _ZikrState extends State<Zikr> {
  String? title;

  @override
  void didChangeDependencies() {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
   // final categoryId = routeArg['id'];
    title = routeArg['title'];

    super.didChangeDependencies();
  }

  int index = 0;

  // ignore: non_constant_identifier_names
  List? FindTheList() {
    if (title == 'أذكار الصباح') return Azkar.morningZikr;
    if (title == 'أذكار المساء') return Azkar.eveningZikr;
    if (title == 'أذكار بعد الصلاة') return Azkar.AfterPrayZikr;
    if (title == 'أذكار النوم') return Azkar.sleepZikr;
    if (title == 'أذكار الإستيقاظ') return Azkar.wakeUpZikr;
    if (title == 'أذكار الصلاة') return Azkar.prayZikr;
    if (title == 'أذكار وأدعية نبوية') return Azkar.propheticPrayers;
    if (title == 'أذكار الطعام') return Azkar.foodZikr;
    if (title == 'أذكار المنزل') return Azkar.homeZikr;
    if (title == 'أذكار المسجد') return Azkar.mosqueZikr;
    if (title == 'أذكار الوضوء') return Azkar.ablutionZikr;
    if (title == 'أذكار الأذان') return Azkar.callToPrayerZikr;
    if (title == 'أذكار الخلاء') return Azkar.emptinessZikr;
    if (title == 'أدعية للمتوفى (ذكور)') return Azkar.PrayForManDaeth;
    if (title == 'أدعية للمتوفية (إناث)') return Azkar.PrayForWomanDaeth;
    if (title == 'أدعية للميّت الطفل الصغير (ذكر أو أنثى)') return Azkar.PrayForBoyDaeth;
    if (title == 'الدّعاء للميّت في صّلاة الجنازة') return Azkar.PrayForFurnalDaeth;
    if (title == 'أسماء الله الحسنى') return Azkar.names_of_allah;
    if (title == 'الرقية الشرعية') return Azkar.roqia;
    return null;
  }

  get foundZikr => FindTheList();

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
   // double screenWidth = mediaQuery.size.width;
    double screenHeight = mediaQuery.size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            title!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/DKR.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: screenHeight / 1.4,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(7, 3),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Center(
                  child: Card(
                    color: Colors.transparent,
                    elevation: 10,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      child: SelectableText(
                        foundZikr[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                        //textScaleFactor: 1.3,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Center(
                  child: Text(
                    '${index + 1} / ${foundZikr.length}',
                    style: const TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    color: Colors.white,
                    iconSize: 70,
                    onPressed: () {
                      setState(() {
                        if (index > 0) {
                          index--;
                        } else {
                          index = foundZikr.length - 1;
                        }
                      });
                    },
                    icon:const Icon(Icons.arrow_left_sharp),
                  ),
                  IconButton(
                    color: Colors.white,
                    iconSize: 70,
                    onPressed: () {
                      setState(() {
                        if (index < foundZikr.length - 1) {
                          index++;
                        } else {
                          index = 0;
                        }
                      });
                    },
                    icon:const Icon(Icons.arrow_right_sharp),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
