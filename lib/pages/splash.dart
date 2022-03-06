import 'package:demo/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';


class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
      name: "assets/welcome_page.flr",
      next: MyLogin(),
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      until: () => Future.delayed(Duration(seconds: 5)),
      backgroundColor: Colors.white,
      startAnimation: "welcome",
    );
  }
}