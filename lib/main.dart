import 'package:demo/pages/home.dart';
import 'package:demo/pages/splash.dart';
import 'package:demo/pages/test.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String auth = "";
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return auth = preferences.getString("email")!;
  }

  @override
  void initState() {
    getPref();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: (auth == "") ? const Splash() : Home(),
    );
  }
}
