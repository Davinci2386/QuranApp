import 'dart:convert';

import 'package:http/http.dart' as http;

class GetAyat {
  Future<Map<String, dynamic>> getAyatF() async {
    http.Response response = await http
        .get(Uri.parse('http://api.alquran.cloud/v1/quran/ar.alafasy'));
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  }
}
