import 'package:flutter/material.dart';
import 'package:quran/services/get_ayat.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Future<Map<String, dynamic>> data = GetAyat().getAyatF();
    return FutureBuilder(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<String> ayat = [];
            for (var i = 0; i < 114; i++) {
              ayat.add('Test');
            }

            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  'القرآن الكريم',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ),
              body: ListView.builder(
                itemCount: ayat.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        color: Colors.amber,
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          ayat[index],
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                      Divider(
                        color: Colors.brown,
                        thickness: 17,
                      )
                    ],
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
