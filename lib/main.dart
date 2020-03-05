import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'game_level.dart';

void main() => runApp(MaterialApp(
      home: UserProfile(),
    ));

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  int gameLevel = 0;
  List<GameLevel> levelName = [
    GameLevel(levelName:'Master', achievement:'100 coin'),
    GameLevel(levelName:'Grand Master', achievement:'120 coin'),
    GameLevel(levelName:'Arch Master', achievement:'150 coin'),
    GameLevel(levelName:'Supreme Master', achievement:'180 coin'),
    GameLevel(levelName:'Ultimate Master', achievement:'200 coin'),
    GameLevel(levelName:'Master', achievement:'100 coin'),
    GameLevel(levelName:'Grand Master', achievement:'120 coin'),
    GameLevel(levelName:'Arch Master', achievement:'150 coin'),
    GameLevel(levelName:'Supreme Master', achievement:'180 coin'),
    GameLevel(levelName:'Ultimate Master', achievement:'200 coin'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('User Profile'),
        centerTitle: true,
        backgroundColor: Colors.cyan[800],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            gameLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(22.0, 32.0, 22.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/cat.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 50.0,
              thickness: 1.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.person,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'User Name',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Arif Ur Rahman',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'User Email',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Text(
              'smrahmanarif@gmail.com',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Your Level',
              style: TextStyle(
                color: Colors.blueGrey,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              '$gameLevel',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Completed Level',
              style: TextStyle(
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: levelName
                  .map(
                    (level) => Text('${level.levelName} - ${level.achievement}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
