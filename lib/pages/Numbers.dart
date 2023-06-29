import 'package:flutter/material.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/models/Item.dart';
import 'package:toku_app/widgets/ItemList.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) : super(key: key);
  static String id = 'NumbersPage';
  final List<Item> items = [
    Item(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'One',
      sound: 'number_one_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
      sound: 'number_two_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'Three',
      sound: 'number_three_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'Four',
      sound: 'number_four_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'Five',
      sound: 'number_five_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
      sound: 'number_six_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'Seven',
      sound: 'number_seven_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'Eight',
      sound: 'number_eight_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      enName: 'Nine',
      sound: 'number_nine_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Ju',
      enName: 'Ten',
      sound: 'number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: Text(
          'Numbers',
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
            itemType: 'numbers',
          );
        },
      ),
    );
  }
}
