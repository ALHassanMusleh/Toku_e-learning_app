import 'package:flutter/material.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/pages/Colors.dart';
import 'package:toku_app/pages/Family_members.dart';
import 'package:toku_app/pages/Numbers.dart';
import 'package:toku_app/pages/Phrases.dart';
import 'package:toku_app/widgets/CategoryItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Toku E-learning App',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white24,
                  fontFamily: 'Poppins_Medium',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: CategoryItem(
                  title: 'Family Member',
                  subTitle: 'To learn Family member using Japanese language',
                  icon: 'assets/images/home/family.png',
                  onTap: () {
                    Navigator.pushNamed(context, FamilyMembersPage.id);
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: CategoryItem(
                  title: 'Numbers',
                  subTitle: 'To learn Numbers using Japanese language',
                  icon: 'assets/images/home/numbers.png',
                  onTap: () {
                    Navigator.pushNamed(context, NumbersPage.id);
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: CategoryItem(
                  title: 'Colors',
                  subTitle: 'To learn Numbers using Japanese language',
                  icon: 'assets/images/home/color-palette.png',
                  onTap: () {
                    Navigator.pushNamed(context, ColorsPage.id);
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: CategoryItem(
                  title: 'Phrases',
                  subTitle: 'To learn Phrases using Japanese language',
                  icon: 'assets/images/home/training-phrase.png',
                  onTap: () {
                    Navigator.pushNamed(context, PhrasesPage.id);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
