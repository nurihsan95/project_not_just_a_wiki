import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project_not_just_a_wiki/view/designpattern/character_card_design.dart';
import 'designpattern/constant.dart';

class CharacterScreen extends StatefulWidget {
  static String screenId = 'character_screen';

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  CharacterCard characterCard = CharacterCard();

  List<CharacterCardProperties> characterCardProperties = [
    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/1/14/Phoenix_icon.png',
      name: 'Phoenix',
      classIcon: duelistNetworkIcon,
      className: 'Duelist',
      tier: 'A',
      dIfficulty: CharacterCard.difficultyEasyIcon(),
    ), //PHOENIX

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/7/74/Sage_icon.png',
      name: 'Sage',
      classIcon: sentinelNetworkIcon,
      className: 'Sentinel',
      tier: 'S',
      dIfficulty: CharacterCard.difficultyEasyIcon(),
    ), //SAGE

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/4/4d/Brimstone_icon.png',
      name: 'Brimstone',
      classIcon: controllerNetworkIcon,
      className: 'Controller',
      tier: 'B',
      dIfficulty: CharacterCard.difficultyEasyIcon(),
    ), //BRIMSTONE

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/5/5f/Viper_icon.png',
      name: 'Viper',
      classIcon: controllerNetworkIcon,
      className: 'Controller',
      tier: 'S',
      dIfficulty: CharacterCard.difficultyHardIcon(),
    ), //VIPER

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/b/b0/Omen_icon.png',
      name: 'Omen',
      classIcon: controllerNetworkIcon,
      className: 'Controller',
      tier: 'A',
      dIfficulty: CharacterCard.difficultyAverageIcon(),
    ), //OMEN

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/1/15/Killjoy_icon.png',
      name: 'Killjoy',
      classIcon: sentinelNetworkIcon,
      className: 'Sentinel',
      tier: 'A',
      dIfficulty: CharacterCard.difficultyEasyIcon(),
    ), //KILLJOY

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/8/88/Cypher_icon.png',
      name: 'Cypher',
      classIcon: sentinelNetworkIcon,
      className: 'Sentinel',
      tier: 'A',
      dIfficulty: CharacterCard.difficultyAverageIcon(),
    ), //CYPHER

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/4/49/Sova_icon.png',
      name: 'Sova',
      classIcon: initiatorNetworkIcon,
      className: 'Initiator',
      tier: 'S',
      dIfficulty: CharacterCard.difficultyHardIcon(),
    ), //SOVA

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/3/35/Jett_icon.png',
      name: 'Jett',
      classIcon: duelistNetworkIcon,
      className: 'Duelist',
      tier: 'S',
      dIfficulty: CharacterCard.difficultyAverageIcon(),
    ), //JETT

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/b/b0/Reyna_icon.png',
      name: 'Reyna',
      classIcon: duelistNetworkIcon,
      className: 'Duelist',
      tier: 'A',
      dIfficulty: CharacterCard.difficultyAverageIcon(),
    ), //REYNA

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/9/9c/Raze_icon.png',
      name: 'Raze',
      classIcon: duelistNetworkIcon,
      className: 'Duelist',
      tier: 'S',
      dIfficulty: CharacterCard.difficultyEasyIcon(),
    ), //RAZE

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/5/53/Breach_icon.png',
      name: 'Breach',
      classIcon: initiatorNetworkIcon,
      className: 'Initiator',
      tier: 'B',
      dIfficulty: CharacterCard.difficultyHardIcon(),
    ), //BREACH

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/3/33/Skye_icon.png',
      name: 'Skyke',
      classIcon: initiatorNetworkIcon,
      className: 'Initiator',
      tier: 'A',
      dIfficulty: CharacterCard.difficultyAverageIcon(),
    ), //SKYKE

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/d/d4/Yoru_icon.png',
      name: 'Yoru',
      classIcon: duelistNetworkIcon,
      className: 'Duelist',
      tier: 'B',
      dIfficulty: CharacterCard.difficultyHardIcon(),
    ), //YORU

    CharacterCardProperties(
      image:
          'https://static.wikia.nocookie.net/valorant/images/0/08/Astra_icon.png',
      name: 'Astra',
      classIcon: controllerNetworkIcon,
      className: 'Controller',
      tier: 'S',
      dIfficulty: CharacterCard.difficultyHardIcon(),
    ), //ASTRA
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#ff0d1721'),
        brightness: Brightness.dark,
        title: Text(
          'Agents',
          style: TextStyle(
            color: HexColor('#FFFF4756'),
            fontFamily: 'Valorant',
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.sort)),
        ],
      ),
      backgroundColor: HexColor('#ff17293A'),
      body: SafeArea(
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 5.0,
              );
            },
            itemCount: characterCardProperties.length,
            itemBuilder: (context, index) {
              return CharacterCard(
                  agentImage: characterCardProperties[index].image,
                  agentName: characterCardProperties[index].name,
                  agentclassIcon: characterCardProperties[index].classIcon,
                  agentclassName: characterCardProperties[index].className,
                  agentTier: characterCardProperties[index].tier,
                  agentDIfficulty: characterCardProperties[index].dIfficulty);
            }),
      ),
    );
  }
}

class CharacterCardProperties {
  final String? image;
  var name;
  var classIcon;
  var className;
  var tier;
  FractionallySizedBox? dIfficulty;

  CharacterCardProperties({
    this.image,
    this.name,
    this.classIcon,
    this.className,
    this.tier,
    this.dIfficulty,
  });
}
