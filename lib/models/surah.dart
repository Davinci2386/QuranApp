class Surah {
  Surah({required this.name});
  String name;
  factory Surah.getNamesfromjson(data, int index) {
    return Surah(name: data['data']['surahs'][index]['name']);
  }
}
