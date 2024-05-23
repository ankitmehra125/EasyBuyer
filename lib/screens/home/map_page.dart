
import 'package:easybuyer/screens/auth_ui/welcome/welcome.dart';
import 'package:easybuyer/screens/home/botnav.dart';
import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff4f2ee),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff966f33),
        ),
        child: Column(
          children: [
            SizedBox(height: kToolbarHeight),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height*0.016,
                bottom: mQuery.size.height*0.03,
                left: mQuery.size.width*0.045,
                right: mQuery.size.width*0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.045,
                  ),
                  Text(
                    "Enable Location Services",
                    style: TextStyle(
                        fontSize: mQuery.size.height*0.027,
                        color: Colors.white,
                        fontFamily: 'SatoshiBold'),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: mQuery.size.height*0.037),
                      Text("Allow EasyBuyer to use your \n "
                          "   location for services.",style: TextStyle(
                          fontSize: mQuery.size.height*0.0215,
                          fontFamily: 'SatoshiBold'
                      ),),
                  
                  
                      SizedBox(height: mQuery.size.height*0.07,),
                      Center(
                        child: Image.asset("assets/images/locationIcon.png"),
                      ),
                  
                      SizedBox(height: mQuery.size.height*0.08),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GestureDetector(
                          onTap: ()
                          {
                            store.read("auth");
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                              return BotNav();
                            }),
                                    (route) => false);
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
                              child: Text("Enable Location Services",
                                style: TextStyle(
                                    fontSize: mQuery.size.height*0.02,
                                    color: Colors.white,
                                    fontFamily: 'SatoshiBold'
                                ),),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: mQuery.size.height*0.032,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}