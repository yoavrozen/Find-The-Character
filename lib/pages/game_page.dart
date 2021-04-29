import 'dart:math';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    Random rnd = new Random();
    int randomPos = rnd.nextInt(5);
    List<String> data = ModalRoute.of(context).settings.arguments;
    String chosenCharacter = data[0];
    String bgImage = data[1];
    switch (randomPos) {
      case 0:
        return Scaffold(
          body: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/$bgImage"),
                      fit: BoxFit.fitHeight)),
            ),
            SafeArea(
              child: Positioned(
                  child: ClipOval(
                    child: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/$chosenCharacter"),
                        )),
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                        "Congratulations! You've found the character!",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Avfont')),
                                    content: Text(
                                        "You can return to the home page and start a new game by pressing the 'restart' button.",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Avfont')),
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text("RESTART",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Avfont')),
                                        onPressed: () {
                                          Navigator.pushNamed(context, "/");
                                        },
                                      )
                                    ],
                                  );
                                });
                          },
                          child: null,
                        )),
                  ),
                  top: 140,
                  left: 70),
            )
          ]),
        );
        break;
      case 1:
        return Scaffold(
          body: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/$bgImage"),
                      fit: BoxFit.fitHeight)),
            ),
            Positioned(
                child: ClipOval(
                  child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/$chosenCharacter"),
                      )),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      "Congratulations! You've found the character!",
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'Avfont')),
                                  content: Text(
                                      "You can return to the home page and start a new game by pressing the 'restart' button.",
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'Avfont')),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text("RESTART",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Avfont')),
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/");
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                        child: null,
                      )),
                ),
                bottom: 110,
                left: 124)
          ]),
        );
        break;
      case 2:
        return Scaffold(
          body: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/$bgImage"),
                      fit: BoxFit.fitHeight)),
            ),
            Positioned(
                child: ClipOval(
                  child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/$chosenCharacter"),
                      )),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      "Congratulations! You've found the character!",
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'Avfont')),
                                  content: Text(
                                      "You can return to the home page and start a new game by pressing the 'restart' button.",
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'Avfont')),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text("RESTART",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Avfont')),
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/");
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                        child: null,
                      )),
                ),
                top: 80,
                right: 64)
          ]),
        );
        break;
      case 3:
        return Scaffold(
          body: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/$bgImage"),
                      fit: BoxFit.fitHeight)),
            ),
            Positioned(
                child: ClipOval(
                  child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/$chosenCharacter"),
                      )),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      "Congratulations! You've found the character!",
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'Avfont')),
                                  content: Text(
                                      "You can return to the home page and start a new game by pressing the 'restart' button.",
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'Avfont')),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text("RESTART",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Avfont')),
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/");
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                        child: null,
                      )),
                ),
                bottom: 40,
                left: 141)
          ]),
        );
        break;
      case 4:
        return Scaffold(
          body: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/$bgImage"),
                      fit: BoxFit.fitHeight)),
            ),
            Positioned(
                child: ClipOval(
                  child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/$chosenCharacter"),
                      )),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      "Congratulations! You've found the character!",
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'Avfont')),
                                  content: Text(
                                      "You can return to the home page and start a new game by pressing the 'restart' button.",
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'Avfont')),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text("RESTART",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Avfont')),
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/");
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                        child: null,
                      )),
                ),
                top: 7,
                left: 120)
          ]),
        );
        break;
      case 5:
        return Scaffold(
          body: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/$bgImage"),
                      fit: BoxFit.fitHeight)),
            ),
            Positioned(
                child: ClipOval(
                  child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/$chosenCharacter"),
                      )),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      "Congratulations! You've found the character!",
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'Avfont')),
                                  content: Text(
                                      "You can return to the home page and start a new game by pressing the 'restart' button.",
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'Avfont')),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text("RESTART",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Avfont')),
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/");
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                        child: null,
                      )),
                ),
                bottom: 100,
                left: 17)
          ]),
        );
        break;
    }
    return null;
  }
}
