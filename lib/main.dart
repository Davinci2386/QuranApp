import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quran/views/home_view.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
