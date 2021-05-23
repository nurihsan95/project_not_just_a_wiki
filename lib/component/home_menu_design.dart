import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeBoxIcon extends StatelessWidget {
  final String imageIcon;
  final Function onTapEvent;
  final String text;

  HomeBoxIcon({this.imageIcon, @required this.onTapEvent, this.text});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200.0),
      child: GestureDetector(
        onTap: onTapEvent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                constraints: BoxConstraints(maxWidth: 180.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageIcon),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: HexColor('#FFFF4756'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Hero(
              tag: 'character',
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Valorant',
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
