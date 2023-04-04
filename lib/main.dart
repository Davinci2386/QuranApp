import 'package:flutter/material.dart';
import 'package:quran/views/home_view.dart';
import 'package:quran/views/surah_view.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {SurahRead.id: (context) => SurahRead()},
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
