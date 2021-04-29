import 'package:flutter/material.dart';
import 'package:find_the_character/pages/choose_character.dart';
import 'package:find_the_character/services/theme.dart';

class ChooseTheme extends StatefulWidget {
  @override
  _ChooseThemeState createState() => _ChooseThemeState();
}

class _ChooseThemeState extends State<ChooseTheme> {
  List<CharacterTheme> themes = [
    CharacterTheme(name: "Marvel", logo: "Marvel.png"),
    CharacterTheme(name: "Star Wars", logo: "Star_Wars.png"),
    CharacterTheme(name: "Pokemon", logo: "pokemon.png"),
    CharacterTheme(name: "Mario", logo: "mario.png"),
    CharacterTheme(name: "Spongebob", logo: "bob.png"),
    CharacterTheme(name: "Misc", logo: "misc.png"),
    CharacterTheme(name: "All Characters", logo:"random.png")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.grey[500],
          title: Text("Choose a theme"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: themes.length,
            itemBuilder: (context, index) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                  child: Material(
                    child: ListTile(
                      onTap: () {
                        String theme = themes[index].name;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChooseCharacter(),
                                settings: RouteSettings(arguments: theme)));
                      },
                      title: Text(themes[index].name),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/${themes[index].logo}"),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
