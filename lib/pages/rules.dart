import 'package:flutter/material.dart';

class Rules extends StatefulWidget {
  @override
  _RulesState createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[500],
          title: Text("Rules",
              style: TextStyle(
                  fontFamily: 'Avfont', fontSize: 23, letterSpacing: 1)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            children: <Widget>[
              Text("Welcome to my game - Find The Character",
                  style: TextStyle(fontFamily: 'Avfont', fontSize: 12)),
              SizedBox(height: 30),
              Text(
                  "in this game you will need to find a characted of your choice in different locations",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Avfont', fontSize: 12)),
              SizedBox(height: 20),
              Text("how to do it:",
                  style: TextStyle(fontFamily: 'Avfont', fontSize: 12)),
              SizedBox(height: 30),
              Text(
                  "1. on the home page, press 'start game'. afterwards, you will need to choose a theme of your choice.",
                  style: TextStyle(fontFamily: 'Avfont', fontSize: 12)),
              SizedBox(height: 30),
              Text(
                  "2. based on your chosen theme, you will need to choose a character from a list that originated in your chosen theme",
                  style: TextStyle(fontFamily: 'Avfont', fontSize: 12)),
              SizedBox(height: 30),
              Text(
                  "3. after you have chosen a character the game will start. on the screen you will see a picture of a certain location and in that location you will need to find your chosen charcter.",
                  style: TextStyle(fontFamily: 'Avfont', fontSize: 12)),
              SizedBox(height: 30),
              Text(
                  "4. after you have located the charcter, tap on it. after you tapped on it, you've won!",
                  style: TextStyle(fontFamily: 'Avfont', fontSize: 12)),
              SizedBox(height: 30),
              Text(
                  "5. afterwards, you can restart the game by pressing 'restart'",
                  style: TextStyle(fontFamily: 'Avfont', fontSize: 12)),
              SizedBox(height: 80),
              Text("i hope you'll enjoy!",
                  style: TextStyle(fontFamily: 'Avfont', fontSize: 12)),
            ],
          ),
        ));
  }
}
