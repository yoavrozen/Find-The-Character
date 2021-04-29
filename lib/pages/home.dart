import 'package:flutter/material.dart';
import 'package:find_the_character/pages/choose_theme.dart';
import 'package:find_the_character/pages/rules.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        automaticallyImplyLeading: false,
        title: Text(
          "Find The Character",
          style:
              TextStyle(fontFamily: 'Avfont', fontSize: 20, letterSpacing: 1),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.red,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.jpg"), fit: BoxFit.fitHeight)),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[800],
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow),
              label: "Start Game",
              backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: "Rules",
              backgroundColor: Colors.lightGreen
            ),
          ],
          currentIndex: 0,
          onTap: (_tapIndex) {
            switch (_tapIndex) {
              case 0:
                break;
              case 1:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChooseTheme()));
                break;
              case 2:
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Rules()));
                break;
            }
          }),
    );
  }
}
