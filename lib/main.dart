import 'package:braille_alfabesi/view/braille.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Braille Alfabesi',
      theme: ThemeData.light().copyWith(
          tabBarTheme: TabBarTheme(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black.withOpacity(0.5),
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          bottomAppBarTheme: const BottomAppBarTheme(
            shape: CircularNotchedRectangle(),
          ),
          inputDecorationTheme: const InputDecorationTheme(
              iconColor: Colors.red, border: OutlineInputBorder()),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              backgroundColor: Colors.transparent,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light)),
      home: const BrailleAlfabesi(),
    );
  }
}
