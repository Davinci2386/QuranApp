import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quran/services/get_ayat.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<String>> ayat = GetAyat().getAyatF();
    print(ayat);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'القرآن الكريم',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          Container(
            color: Colors.amber,
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Text('Test'),
          );
        },
      ),
    );
  }
}
