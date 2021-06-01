import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project_not_just_a_wiki/component/constant.dart';

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
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              constraints: BoxConstraints(maxWidth: 100.0),
              decoration: BoxDecoration(
                  border: Border.all(color: HexColor('#FFFF4756'))),
              child: Image.network(
                  'https://static.wikia.nocookie.net/valorant/images/1/14/Phoenix_icon.png/revision/latest?cb=20201128234131'),
            ),
            Expanded(
              child: Container(
                constraints: BoxConstraints(maxHeight: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      //Agent name
                      'Phoenix',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      //Role
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          constraints:
                              BoxConstraints(maxWidth: 20.0, maxHeight: 20.0),
                          child: Image.network(duelistNetworkIcon),
                        ),
                        Text(
                          'Duelist',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      //Tier
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'A',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          'Tier',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        //Difficulty
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.circle_rounded,
                                color: Colors.white,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.circle_rounded,
                                color: Colors.white,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.circle_outlined,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ],
                          ),
                          Text(
                            'Average',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
