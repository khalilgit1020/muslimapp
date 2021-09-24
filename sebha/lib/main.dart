import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 // import 'package:sebha/model/azkar.dart';
import 'package:sebha/pages/home.dart';
import 'package:sebha/pages/pray_for_daeth.dart';
import 'package:sebha/pages/splash_screen.dart';
import 'package:sebha/pages/tsbeh.dart';
import 'package:sebha/pages/types_of_zikr.dart';
import 'package:sebha/pages/zekr.dart';
import 'package:sebha/providerss/TasbehProvider.dart';
import 'package:sebha/providerss/ReadQuraanProvider.dart';
import 'package:sebha/providerss/stories_provider.dart';
import 'package:sebha/providerss/story_list_provider.dart';
import 'package:sebha/providerss/zikr_item_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ReadQuraanProvider()),
        ChangeNotifierProvider(create: (_) => TasbeehProvider()),
        ChangeNotifierProvider(create: (_) => StoriesProvider()),
        ChangeNotifierProvider(create: (_) => ZikrItemProvider()),
        ChangeNotifierProvider(create: (_) => StoryListProvider()),
      ],
      child: MyApp(),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        // ignore: deprecated_member_use
        accentColor: Colors.white,
      ),
      home: SplashScre(),
      routes: {
        'zikr': (_) => Zikr(),
        // ignore: prefer_const_constructors
        'tasbeh': (_) => Tasbeh(),
        'typesOfZikr': (_) => TypesOfZikr(),
        'home': (_) => HomePage(),
        'prayToDeath': (_) => PrayToDeath(),
      },
    );
  }
}
