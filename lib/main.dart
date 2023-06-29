import 'package:flutter/material.dart';
import 'package:toku_app/pages/Colors.dart';
import 'package:toku_app/pages/Family_members.dart';
import 'package:toku_app/pages/HomePage.dart';
import 'package:toku_app/pages/Numbers.dart';
import 'package:toku_app/pages/Phrases.dart';
import 'package:toku_app/pages/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        SplashScreen.id : (context) => SplashScreen(),
        HomePage.id: (context) => HomePage(),
        FamilyMembersPage.id: (context) => FamilyMembersPage(),
        NumbersPage.id: (context) => NumbersPage(),
        ColorsPage.id: (context) => ColorsPage(),
        PhrasesPage.id: (context) => PhrasesPage(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
