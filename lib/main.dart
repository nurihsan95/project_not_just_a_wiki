import 'package:flutter/material.dart';
import 'package:project_not_just_a_wiki/view/home_screen.dart';
import 'view/home_screen.dart';
import 'view/character_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(NotJustAWikiValorant());
}

class NotJustAWikiValorant extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      initialRoute: HomeScreen.screenId,
      routes: {
        HomeScreen.screenId: (context) => HomeScreen(),
        CharacterScreen.screenId: (context) => CharacterScreen(),
      },
    );
  }
}
