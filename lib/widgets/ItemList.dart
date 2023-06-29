import 'package:audioplayers/audioplayers.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/helper/show_snack_bar.dart';
import 'package:toku_app/models/Item.dart';

class ItemList extends StatelessWidget {
  ItemList({required this.item, required this.itemType});

  Item item;
  String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: item.image != null
            ? ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xfff8f7fc),
                  child: Image.asset(item.image!),
                ),
                title: Text(
                  item.jpName,
                  style: TextStyle(
                    fontFamily: 'Poppins_Medium',
                  ),
                ),
                subtitle: Text(
                  item.enName,
                  style: TextStyle(
                    fontFamily: 'Poppins_Medium',
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          FlutterClipboard.copy(item.jpName).then((value) =>
                              showSnackBar(context, 'Text is Copied'));
                        },
                        icon: Icon(Icons.copy_rounded)),
                    IconButton(
                        onPressed: () {
                          try {
                            AudioCache player =
                                AudioCache(prefix: 'assets/sounds/$itemType/');
                            player.play(item.sound);
                          } catch (ex) {
                            print(ex);
                          }
                        },
                        icon: Icon(Icons.play_circle_fill_outlined)),
                  ],
                ),
              )
            : ListTile(
                title: Text(
                  item.jpName,
                  style: TextStyle(
                    fontFamily: 'Poppins_Medium',
                    fontSize: 13,
                  ),
                ),
                subtitle: Text(
                  item.enName,
                  style: TextStyle(
                    fontFamily: 'Poppins_Medium',
                    fontSize: 13,

                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          FlutterClipboard.copy(item.jpName).then((value) =>
                              showSnackBar(context, 'Text is Copied'));
                        },
                        icon: Icon(Icons.copy_rounded)),
                    IconButton(
                        onPressed: () {
                          try {
                            AudioCache player =
                                AudioCache(prefix: 'assets/sounds/$itemType/');
                            player.play(item.sound);
                          } catch (ex) {
                            print(ex);
                          }
                        },
                        icon: Icon(Icons.play_circle_fill_outlined)),
                  ],
                ),
              ));
  }
}
