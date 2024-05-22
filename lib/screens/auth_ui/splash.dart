import 'dart:async';

import 'package:easybuyer/screens/auth_ui/welcome/welcome.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return Welcome();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f2ee),
      body: Center(
        child: Image.asset("assets/images/welcome.png"),
      ),
    );
  }
}
