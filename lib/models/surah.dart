class Surah {
  Surah({required this.ayat});
  List<String> ayat;
  factory Surah.fromjson(data) {
    return Surah(ayat: ['']);
  }
}
