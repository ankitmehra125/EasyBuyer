import 'dart:async';

import 'package:easybuyer/screens/auth_ui/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return Welcome();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff4f2ee),
      body: Column(
        children: [
          SizedBox(height: mQuery.size.height*0.1,),
          Center(
            child: Image.asset("assets/images/welcome.png",height: mQuery.size
                .height*0.6,),
          ),
          SvgPicture.asset("assets/images/EasyBuyer.svg",width: mQuery.size
              .width*0.5, color: Color(0xffac7a48),),
          Expanded(child: SizedBox()),
          Text("Ankit Mehra",style: TextStyle(
             color: Color(0xffac7a48),
            fontSize: 16,
            fontFamily: 'SatoshiMedium'
          ),),
          Text("Android/ios Engineer",style: TextStyle(
              color: Colors.green,
              fontSize: 15,
              fontFamily: 'SatoshiMedium'
          ),),
          SizedBox(height: mQuery.size.height*0.032,)
        ],
      ),
    );
  }
}
