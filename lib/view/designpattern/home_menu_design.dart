import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeBoxIcon extends StatelessWidget {
  final imageIcon;
  final onTapEvent;
  final text;

  HomeBoxIcon({this.imageIcon, @required this.onTapEvent, this.text});

  @override
  Widget build(BuildContext context) {
    var deviceDataSize = MediaQuery.of(context);
    print(deviceDataSize);

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: deviceDataSize.size.width / 2.5,
      ),
      child: GestureDetector(
        onTap: onTapEvent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Container(
                width: deviceDataSize.size.width / 2.5,
                // height: 180,
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
            Text(
              text,
              style: TextStyle(
                  fontSize: 20.0, fontFamily: 'Valorant', color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
