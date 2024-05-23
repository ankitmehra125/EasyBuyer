import 'package:easybuyer/constants/routes.dart';
import 'package:easybuyer/screens/auth_ui/login/login.dart';
import 'package:easybuyer/screens/auth_ui/signup/signup.dart';
import 'package:easybuyer/screens/home/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';

final store = GetStorage();


class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff4f2ee),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mQuery.size.width*0.045
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kToolbarHeight),
            Text("Welcome",style: TextStyle(
              fontFamily: 'SatoshiBold',
              fontSize: 17
            ),),
            SizedBox(height: mQuery.size.height*0.016,),
            Text("Buy any item from using app",style: TextStyle(
              fontFamily: 'SatoshiMedium',
              color: Colors.black
            ),),
            Center(child: Image.asset("assets/images/welcome.png",height:
            mQuery.size.height*0.5,)),


            GestureDetector(
              onTap: ()
              {
                Routes.instance.push(SignUp(), context);
              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff966f33),
                          Color(0xffac7a48)
                        ]
                    )
                ),
                child: Center(
                  child: Text("Sign Up",style: TextStyle(
                      fontFamily: 'SatoshiBold',
                      fontSize: 16,
                      color: Colors.white
                  ),),
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.023,),
            GestureDetector(
              onTap: ()
              {
                Routes.instance.push(Login(), context);
              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff966f33),
                          Color(0xffac7a48)
                        ]
                    )
                ),
                child: Center(
                  child: Text("Log In",style: TextStyle(
                      fontFamily: 'SatoshiBold',
                      fontSize: 16,
                      color: Colors.white
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: mQuery.size.height * 0.023,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Color(0xffac7a48),
                  ),
                ),
                SizedBox(
                  width: mQuery.size.width * 0.036,
                ),
                Text(
                  "OR",
                  style: TextStyle(
                      color: Color(0xffac7a48),
                      fontFamily: 'SatoshiBold',
                      fontSize: mQuery.size.height * 0.02),
                ),
                SizedBox(
                  width: mQuery.size.width * 0.036,
                ),
                const Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Color(0xffac7a48),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mQuery.size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                store.write("auth", "Guest");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return MapPage();
                    }));
              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff966f33),
                          Color(0xffac7a48)
                        ]
                    )
                ),
                child: Center(
                  child: Text(
                    "Continue as Guest",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SatoshiBold',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.065,)
          ],
        ),
      ),
    );
  }
}
