import 'package:easybuyer/screens/Help/help_page.dart';
import 'package:easybuyer/screens/Help/offers_page.dart';
import 'package:easybuyer/screens/Help/rating_page.dart';
import 'package:easybuyer/screens/Help/refer_page.dart';
import 'package:easybuyer/screens/Payment/manage_cards_page.dart';
import 'package:easybuyer/screens/Wallet/wallet_page.dart';
import 'package:easybuyer/screens/auth_ui/welcome/welcome.dart';
import 'package:easybuyer/screens/home/botnav.dart';
import 'package:easybuyer/screens/home/editprofile.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:easybuyer/screens/home/shopping.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/svg.dart';


var versionNo= 1.1;
var userName = "Ankit Mehra";
var phoneNo = "(+91) 9978997899";

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  void signoutPop(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              backgroundColor: Colors.white,
              content: Container(
                height: mQuery.size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/profile_images/logoutImage.svg",
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Sign Out',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffCA3939),
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                    SizedBox(height: mQuery.size.height * 0.032,),
                    Center(
                      child: Text(
                        "Are you sure you want to Sign out?",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                    ),
                    SizedBox(height: mQuery.size.height * 0.032,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Welcome()),
                                (route) => false, // Here, you define the condition when to stop removing routes. In this case, it always returns false, so it removes all routes.
                          );

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: Text(
                            "YES, SignOut",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: 'SatoshiBold'
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mQuery.size.height * 0.023,),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: Text(
                          "CANCEL",
                          style: TextStyle(
                              color: Color(0xff9BA1A8),
                              fontFamily: 'SatoshiBold',
                              fontSize: 13
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Drawer(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return EditProfile();
                }));
              },
              child: Container(
                width: double.infinity,
                color: Color(0xfffdf5e2),
                height: mQuery.size.height*0.15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: mQuery.size.height*0.058),
                    GestureDetector(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: mQuery.size.width*0.028,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundImage: AssetImage("assets/images/profilePicture.png")
                              ),
                              SizedBox(width: mQuery.size.width*0.024,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(height: mQuery.size.height*0.02,),
                                      Text("$userName",style: TextStyle(
                                          fontSize: mQuery.size.height*0.022,
                                          fontFamily: 'SatoshiBold'
                                      ),),
                                      SizedBox(width: mQuery.size.width*0.05,),
                                      GestureDetector(
                                        onTap: ()
                                        {
                                          Navigator.push(context, MaterialPageRoute(builder: (context){
                                            return EditProfile();
                                          }));
                                        },
                                        child: Image.asset("assets/images/drawer-images/edit.png",color: Color(0xffac7a48),
                                            width: mQuery.size.width*0.045),)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.phone_android,
                                        size: mQuery.size.width*0.05,),
                                      Text("$phoneNo",style: TextStyle(
                                          fontSize: mQuery.size.height*0.0185,
                                          fontFamily: 'SatoshiMedium'
                                      ),),
                                      SizedBox(width: mQuery.size.width*0.02,),
                                      Container(
                                        width: mQuery.size.width*0.04,
                                        height: mQuery.size.height*0.04,
                                        decoration: BoxDecoration(
                                          color: Color(0xff009c1a),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 10,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 10,
                      offset: Offset(3, 3), // changes the position of the shadow
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return BotNav();
                            }));
                          },
                          child: ListTile(
                            leading: Image.asset("assets/images/drawer-images/dashboard.png",color: Color(0xffac7a48),
                                width: mQuery.size.width*0.065),
                            title: Text("Dashboard",style: TextStyle(
                              fontFamily: 'SatoshiMedium',
                              fontSize: mQuery.size.height*0.0212,
                            ),
                            ),
                          )
                      ),

                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Shopping();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/shopping-bag.png",color: Color(0xffac7a48),
                              width: mQuery.size.width*0.06),
                          title: Text("Your Orders",style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),


                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return WalletPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/wallet.png",color: Color(0xffac7a48),
                              width: mQuery.size.width*0.06),
                          title: Text("Wallet",style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ManageCardsPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/credit-card.png",color: Color(0xffac7a48),
                              width: mQuery.size.width*0.06),
                          title: Text("Manage Cards",style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return OffersPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/offers.png",color: Color(0xffac7a48),
                              width: mQuery.size.width*0.06),
                          title: Text("Offers",style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ReferPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/gift.png",color: Color(0xffac7a48),
                              width: mQuery.size.width*0.06),
                          title: Text("Refer and Earn",style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return RatingPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/star.png",color: Color(0xffac7a48),
                              width: mQuery.size.width*0.06),
                          title: Text("Reviews",style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return HelpPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/help.png",color: Color(0xffac7a48),
                              width: mQuery.size.width*0.06),
                          title: Text("Help",style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(
                  top: mQuery.size.height*0.02
              ),
              color: Colors.white,
              child: Column(
                children: [
                  const Divider(color: Colors.grey,
                    thickness: 0.5,),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.045
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap : ()
                                  {
                                    signoutPop(context);
                                  },
                                  child: Text("Sign Out",style: TextStyle(
                                      fontSize: mQuery.size.height*0.022,
                                      color: Colors.black,
                                      fontFamily: 'SatoshiBold'
                                  ),),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.0075,),
                        Text("EASYBUYER V$versionNo",style: TextStyle(
                            fontSize: mQuery.size.height*0.015,
                            fontFamily: 'SatoshiRegular'
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
