import 'package:flutter/material.dart';
import 'package:project_not_just_a_wiki/view/home_screen.dart';
import 'view/home_screen.dart';
import 'view/character_screen.dart';

void main() {
  runApp(NotJustAWikiValorant());
}

class NotJustAWikiValorant extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.screenId,
      routes: {
        HomeScreen.screenId: (context) => HomeScreen(),
        CharacterScreen.screenId: (context) => CharacterScreen(),
      },
    );
  }
}
