import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CharacterScreen extends StatefulWidget {
  static String screenId = 'character_screen';

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#ff0d1721'),
        brightness: Brightness.dark,
        title: Hero(
          tag: 'character',
          child: Text(
            'Agents',
            style: TextStyle(
              color: HexColor('#FFFF4756'),
              fontFamily: 'Valorant',
            ),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: HexColor('#ff17293A'),
      body: SafeArea(),
    );
  }
}
