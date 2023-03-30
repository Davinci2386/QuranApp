import 'dart:convert';

import 'package:http/http.dart' as http;

class GetAyat {
  Future<List<String>> getAyatF() async {
    http.Response response = await http
        .get(Uri.parse('http://api.alquran.cloud/v1/quran/ar.alafasy'));
    Map<String, dynamic> data = jsonDecode(response.body);
    List<String> ayat = [];
    for (var i = 0; i < 114; i++) {
      ayat.add(data['data']['surahs'][i]['name']);
    }
    return ayat;
  }
}
