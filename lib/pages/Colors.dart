import 'package:flutter/material.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/models/Item.dart';
import 'package:toku_app/widgets/ItemList.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) : super(key: key);
  static String id = 'ColorsPage';
  final List<Item> items = [
    Item(
      sound: 'black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item(
      sound: 'brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Item(
      sound: 'dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Item(
      sound: 'gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Item(
      sound: 'green.wav',
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    Item(
      sound: 'red.wav',
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
    Item(
      sound: 'balck.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item(
      sound: 'white.wav',
      jpName: 'Shiroi',
      enName: 'white',
      image: 'assets/images/colors/color_white.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: Text(
          'Colors',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white24,
            fontFamily: 'Poppins_Medium',
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) {
          return ItemList(
            item: items[i],
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
