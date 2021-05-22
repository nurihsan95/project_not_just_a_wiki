import 'package:flutter/material.dart';

void main() {
  runApp(NotJustAWikiValorant());
}

class NotJustAWikiValorant extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NotJustAWikiValorant(),
    );
  }
}
