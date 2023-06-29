import 'package:flutter/material.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/models/Item.dart';
import 'package:toku_app/widgets/ItemList.dart';

class PhrasesPage extends StatelessWidget {
   PhrasesPage({Key? key}) : super(key: key);
  static String id = 'PhrasesPage';
  final List<Item> items =  [
    Item(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'dont forget to subscribe',
    ),
    Item(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu daisukidesu',
      enName: 'i love  programming',
    ),
    Item(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu ',
      enName: 'programming is easy',
    ),
    Item(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    Item(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name ?',
    ),
    Item(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    Item(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling?',
    ),
    Item(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'are you coming?',
    ),
    Item(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai watashi wa kite imasu',
      enName: 'yes i am coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: Text(
          'Phrases',
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
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
