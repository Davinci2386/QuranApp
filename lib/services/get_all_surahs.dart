import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quran/models/surah.dart';

class GetAyat {
  Future<List<Surah>> getAllSurahs() async {
    http.Response response = await http
        .get(Uri.parse('http://api.alquran.cloud/v1/quran/ar.alafasy'));
    Map<String, dynamic> data = jsonDecode(response.body);
    List<Surah> surahs = [];
    for (var i = 0; i < 114; i++) {
      surahs.add(Surah.getNamesfromjson(data, i));
    }
    return surahs;
  }
}
