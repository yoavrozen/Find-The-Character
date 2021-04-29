import 'dart:math';

import 'package:flutter/material.dart';
import 'package:find_the_character/pages/game_page.dart';
import 'package:find_the_character/services/character.dart';
import 'package:find_the_character/services/level.dart';

class ChooseLevel extends StatefulWidget {
  @override
  _ChooseLevelState createState() => _ChooseLevelState();
}

class _ChooseLevelState extends State<ChooseLevel> {
  @override
  Widget build(BuildContext context) {
    Character chosenCharacter = ModalRoute.of(context).settings.arguments;
    List<String> possiblePics = [
      "declaration.jpg",
      "disney.jpg",
      "super.jpg",
      "star.jpg",
      "simpsons.jpg"
    ];
    Random rnd = new Random();
    int randomLevel = rnd.nextInt(possiblePics.length);
    String randomLevelPic;
    switch (randomLevel) {
      case 0:
        randomLevelPic = possiblePics[1];
        break;
      case 1:
        randomLevelPic = possiblePics[3];
        break;
      case 2:
        randomLevelPic = possiblePics[2];
        break;
      case 3:
        randomLevelPic = possiblePics[4];
        break;
      case 4:
        randomLevelPic = possiblePics[0];
        break;
    }
    List<Level> levels = [
      Level(
          levelNum: 1,
          locationName: "Declaration(Easiest)",
          pic: "declaration.jpg",
          chosenCharacter: chosenCharacter),
      Level(
          levelNum: 2,
          locationName: "Disney",
          pic: "disney.jpg",
          chosenCharacter: chosenCharacter),
      Level(
          levelNum: 3,
          locationName: "Super Heros",
          pic: "super.jpg",
          chosenCharacter: chosenCharacter),
      Level(
          levelNum: 4,
          locationName: "The Star Wars Saga",
          pic: "star.jpg",
          chosenCharacter: chosenCharacter),
      Level(
          levelNum: 5,
          locationName: "The Simpsons(Hardest)",
          pic: "simpsons.jpg",
          chosenCharacter: chosenCharacter),
      Level(
          levelNum: 6,
          locationName: "Random Level",
          pic: randomLevelPic,
          chosenCharacter: chosenCharacter)
    ];
    return Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.grey[500],
          title: Text("Choose a level"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: levels.length,
            itemBuilder: (context, index) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                  child: Material(
                    child: ListTile(
                      onTap: () {
                        String chosenLevel = levels[index].pic;
                        List<String> chooses = [
                          chosenCharacter.pic,
                          chosenLevel
                        ];
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GamePage(),
                                settings: RouteSettings(arguments: chooses)));
                      },
                      title: Text("Level" +
                          " " +
                          levels[index].levelNum.toString() +
                          " " +
                          "-" +
                          " " +
                          levels[index].locationName),
                    ),
                  ),
                ),
              );
            }));
  }
}
