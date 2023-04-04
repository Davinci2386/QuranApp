import 'package:quran/models/surah.dart';

class Surahs {
  Surahs({required this.name, required this.surah});
  String name;
  Surah surah;
  factory Surahs.getNamesfromjson(data, int index) {
    return Surahs(
        name: data['data']['surahs'][index]['name'],
        surah: Surah.fromjson(data['data']['surahs'][index]['ayahs']));
  }
}
