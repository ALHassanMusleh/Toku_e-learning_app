import 'package:flutter/cupertino.dart';

class Item {
  final String? image;
  final String enName;
  final String jpName;
  final String sound;

  Item(
      {@required this.image,
      required this.enName,
      required this.jpName,
      required this.sound});
}
