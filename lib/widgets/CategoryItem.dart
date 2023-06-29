import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem(
      {required this.onTap,
      required this.title,
      required this.subTitle,
      required this.icon});

  VoidCallback onTap;
  String title;
  String subTitle;
  String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      padding: EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 60,
            bottom: 100,
            child: CircleAvatar(
              backgroundColor: Color(0xfff8f7fc),
              radius: 100,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    child: Image.asset(icon),
                    backgroundColor: Color(0xffd3d3d2)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Poppins_Medium',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontFamily: 'Poppins_Medium',
                    fontSize: 12,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfffe8302),
                  ),
                  onPressed: onTap,
                  child: Text(
                    'Let\'s Start',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
