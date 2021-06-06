import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project_not_just_a_wiki/view/designpattern/home_menu_design.dart';
import 'character_screen.dart';

class HomeScreen extends StatefulWidget {
  static String screenId = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    print(deviceData);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#ff0d1721'),
          brightness: Brightness.dark,
          title: Text(
            'Not Just A Wiki: Valorant',
            style: TextStyle(
              color: HexColor('#FFFF4756'),
              fontFamily: 'Valorant',
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: HexColor('#ff17293A'),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: HomeBoxIcon(
                        imageIcon:
                            'https://statics.indozone.news/content/2020/09/21/RMsxMa6/5-agent-terbaik-di-valorant-cocok-digunakan-untuk-bermain-ranked53_700.jpg',
                        text: 'Agents',
                        onTapEvent: () {
                          Navigator.pushNamed(
                              context, CharacterScreen.screenId);
                        },
                      ),
                    ),
                    Expanded(
                      child: HomeBoxIcon(
                        imageIcon:
                            'https://cdn.cosmicjs.com/6fc36a80-857f-11ea-9523-7f6edf23093e-Valorant-Guns.png',
                        text: 'Weapons',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: HomeBoxIcon(
                        imageIcon:
                            'https://www.mandatory.gg/wp-content/uploads/database/maps/haven/valorant-database-maps-haven.png',
                        text: 'Maps',
                      ),
                    ),
                    Expanded(
                      child: HomeBoxIcon(
                        imageIcon:
                            'https://cdn1.dotesports.com/wp-content/uploads/2020/04/20075547/valorant_jett_duotoned-1-2-1.jpg',
                        text: 'Game Modes',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
