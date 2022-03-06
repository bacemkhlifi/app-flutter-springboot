import 'package:flutter/material.dart';

import 'dart:async';

class ProfilePage extends StatefulWidget {
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.maybePop(context);
              },
            ),
            title: Text('Edit Profile',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.check,
                    color: Colors.blueAccent,
                  ),
                  onPressed: () {})
            ],
          ),
          body: ListView(
            children: <Widget>[],
          )),
    );
  }
}
