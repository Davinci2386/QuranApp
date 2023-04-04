import 'package:flutter/material.dart';
import 'package:quran/models/surahs.dart';
import 'package:quran/services/get_all_surahs.dart';
import 'package:quran/views/surah_view.dart';

import '../widgets/ayah_navigator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Surahs>>(
        future: GetAyat().getAllSurahs(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Surahs>? surah = snapshot.data;
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
                    navigator: () {
                      Navigator.pushNamed(
                        context,
                        SurahRead.id,
                      );
                    },
                  );
                },
              ),
            );
          } else {
            return SafeArea(child: CircularProgressIndicator());
          }
        });
  }
}
