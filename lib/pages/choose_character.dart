import 'dart:math';
import 'package:flutter/material.dart';
import 'package:find_the_character/pages/choose_level.dart';
import 'package:find_the_character/services/character.dart';

class ChooseCharacter extends StatefulWidget {
  @override
  _ChooseCharacterState createState() => _ChooseCharacterState();
}

class _ChooseCharacterState extends State<ChooseCharacter> {
  List<Character> characters = [
    Character(name: "Iron Man", pic: "ironman.png", theme: "Marvel"),
    Character(name: "Captain America", pic: "captain.png", theme: "Marvel"),
    Character(name: "Spider Man", pic: "spiderman.png", theme: "Marvel"),
    Character(name: "Luke Skywalker", pic: "luke.png", theme: "Star Wars"),
    Character(name: "Darth Vader", pic: "darth.png", theme: "Star Wars"),
    Character(name: "Yoda", pic: "yoda.png", theme: "Star Wars"),
    Character(name: "Pikachu", pic: "pikachu.png", theme: "Pokemon"),
    Character(name: "Snorlax", pic: "snorlax.png", theme: "Pokemon"),
    Character(name: "Squirtle", pic: "squirtle.png", theme: "Pokemon"),
    Character(name: "Spongebob", pic: "bob.png", theme: "Spongebob"),
    Character(name: "Patrick", pic: "patrick.png", theme: "Spongebob"),
    Character(name: "Squidward", pic: "squid.png", theme: "Spongebob"),
    Character(name: "Mario", pic: "marioface.png", theme: "Mario"),
    Character(name: "Luigi", pic: "luigi.png", theme: "Mario"),
    Character(name: "Wario", pic: "wario.png", theme: "Mario"),
    Character(name: "Shrek", pic: "shrek.png", theme: "Misc"),
    Character(name: "Sonic", pic: "sonic.png", theme: "Misc"),
    Character(name: "Bugs Bunny", pic: "bugs.png", theme: "Misc"),
  ];
  List<Character> relavantCharacters(String theme, List<Character> characters) {
    List<Character> relavants = [];
    if (theme == "All Characters") {
      return characters;
    }
    for (int i = 0; i < characters.length; i++) {
      if (characters[i].theme == theme) {
        relavants.add(characters[i]);
      }
    }
    return relavants;
  }

  @override
  Widget build(BuildContext context) {
    String theme = ModalRoute.of(context).settings.arguments;
    List<Character> charactersList = relavantCharacters(theme, characters);
    return Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.grey[500],
          title: Text("Choose a character"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: charactersList.length,
            itemBuilder: (context, index) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                  child: Material(
                    child: ListTile(
                      onTap: () {
                        Character chosenCharacter = charactersList[index];
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChooseLevel(),
                                settings:
                                    RouteSettings(arguments: chosenCharacter)));
                      },
                      title: Text(charactersList[index].name),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/${charactersList[index].pic}"),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
