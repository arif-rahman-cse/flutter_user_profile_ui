import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: UserProfile(),
    ));

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  int gameLevel = 0;

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
          ],
        ),
      ),
    );
  }
}
