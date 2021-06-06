import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CharacterCard extends StatelessWidget {
  final agentImage;
  final agentName;
  final agentclassIcon;
  final agentclassName;
  final agentTier;
  final agentDIfficulty;

  CharacterCard({
    this.agentImage,
    this.agentName,
    this.agentclassIcon,
    this.agentclassName,
    this.agentTier,
    this.agentDIfficulty,
  });

  static difficultyEasyIcon() {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: Container(
        constraints: BoxConstraints(maxHeight: 40),
        child: Column(
          //Difficulty
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ],
              ),
            ),
            Text(
              'Easy',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static difficultyAverageIcon() {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: Container(
        constraints: BoxConstraints(maxHeight: 40),
        child: Column(
          //Difficulty
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ],
              ),
            ),
            Text(
              'Average',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static difficultyHardIcon() {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: Container(
        constraints: BoxConstraints(maxHeight: 40),
        child: Column(
          //Difficulty
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  Icon(
                    Icons.circle_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ],
              ),
            ),
            Text(
              'Hard',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 160.0),
      padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: HexColor('#ff6F6C69'),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxWidth: 100.0, maxHeight: 100.0),
            decoration: BoxDecoration(),
            child: Image.network(agentImage),
          ),
          Container(
            width: 125.0,
            padding: EdgeInsets.only(left: 5),
            // constraints: BoxConstraints(maxWidth: 130.0, maxHeight: 100.0),
            child: Text(
              //Agent name
              agentName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              // height: 125.0,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FractionallySizedBox(
                    heightFactor: 0.8,
                    child: Container(
                      width: 70.0,
                      child: Column(
                        //Role
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            constraints:
                                BoxConstraints(maxWidth: 35.0, maxHeight: 35.1),
                            child: Image.network(agentclassIcon),
                          ),
                          Text(
                            agentclassName,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: 0.8,
                    child: Container(
                      // constraints: BoxConstraints(maxHeight: 40),
                      child: Column(
                        //Tier
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            agentTier,
                            style: TextStyle(
                              // height: 1,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                            // textAlign: ,
                          ),
                          Text(
                            'Tier',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  agentDIfficulty!,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
