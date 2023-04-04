import 'package:flutter/material.dart';
import 'package:quran/models/surah.dart';
import 'package:quran/services/get_all_surahs.dart';

import '../widgets/ayah_navigator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: GetAyat().getAllSurahs(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Surah>? surah = snapshot.data;
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text(
                  'القرآن الكريم',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ),
              body: ListView.builder(
                itemCount: surah!.length,
                itemBuilder: (context, index) {
                  return Surah_Navigator(
                    surah: surah,
                    index: index,
                    navigator: () {},
                  );
                },
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
