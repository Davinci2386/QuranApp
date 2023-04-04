import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/surah.dart';

class Surah_Navigator extends StatelessWidget {
  Surah_Navigator(
      {super.key,
      required this.surah,
      required this.index,
      required this.navigator});
  VoidCallback navigator;
  final List<Surah>? surah;
  int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: navigator,
          child: Container(
            color: Colors.brown[400],
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Text(
              surah![index].name,
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ),
        ),
        const Divider(
          color: Colors.brown,
          thickness: 17,
        )
      ],
    );
  }
}
