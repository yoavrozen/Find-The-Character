import 'package:flutter/material.dart';
import 'package:find_the_character/pages/choose_level.dart';
import 'package:find_the_character/pages/choose_theme.dart';
import 'package:find_the_character/pages/game_page.dart';
import 'package:find_the_character/pages/choose_character.dart';
import 'package:find_the_character/pages/home.dart';
import 'package:find_the_character/pages/rules.dart';

void main() => runApp(MaterialApp(
  initialRoute: "/",
  routes: {
    "/": (context) => Home(),
    "choose_theme": (context) => ChooseTheme(),
    "rules": (context) => Rules(),
    "choose_character": (context) => ChooseCharacter(),
    "choose_level": (context)=> ChooseLevel(),
    "gamepage": (context) => GamePage(),
  },
));