import 'package:easybuyer/firebase_helper/firebase_firestore_helper/firebase_firestore_helper.dart';
import 'package:easybuyer/models/product_model/product_model.dart';
import 'package:easybuyer/screens/home/budsContent.dart';
import 'package:easybuyer/screens/home/laptopContent.dart';
import 'package:easybuyer/screens/home/phoneContent.dart';
import 'package:easybuyer/screens/home/watchContent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

bool isMacbookAir = false;
bool isMacbookPro = false;
bool isGalaxy2 = false;
bool isGalaxy4 = false;

bool iss24ultra = false;
bool is15promax = false;
bool iszfold5 = false;
bool iszfold6 = false;

bool iswatchUltra2 = false;
bool isClassic6 = false;
bool is5pro = false;
bool isseries9 = false;

bool isbud2pro = false;
bool isbud2 = false;
bool ispixelbudpro = false;
bool isairpodpro2 = false;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = TextEditingController();

  bool isLaptop = true;
  bool isPhone = false;
  bool isWatch = false;
  bool isAirpod = false;


  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff4f2ee),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kToolbarHeight,),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: mQuery.size.width * 0.045,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Easy Buyer",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SatoshiBold',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.032,),
                  Container(
                    width: double.infinity,
                    height: mQuery.size.height * 0.055,
                    padding: EdgeInsets.only(
                      left: mQuery.size.width * 0.032,
                      right: mQuery.size.width * 0.045,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: searchController,
                      cursorColor: Colors.grey,
                      style: TextStyle(
                        fontFamily: 'SatoshiMedium',
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(CupertinoIcons.search),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          height: 1.3,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.032,),
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'SatoshiBold',
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.023,),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isLaptop = true;
                          isPhone = false;
                          isWatch = false;
                          isAirpod = false;
                        });
                      },
                      child: Container(
                        width: mQuery.size.width*0.23,
                        height: mQuery.size.height*0.1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isLaptop ? Color(0xffa67c00) : Colors.transparent
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                            child: Image.asset("assets/images/laptop.png",
                                width: mQuery.size.width*0.13)),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.032,),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isLaptop = false;
                          isPhone = true;
                          isWatch = false;
                          isAirpod = false;
                        });
                      },
                      child: Container(
                        width: mQuery.size.width*0.23,
                        height: mQuery.size.height*0.1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isPhone ? Color(0xffa67c00) : Colors
                                    .transparent
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                            child: Image.asset("assets/images/phone.png",
                              width: mQuery.size.width*0.2,)),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.032,),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isLaptop = false;
                          isPhone = false;
                          isWatch = true;
                          isAirpod = false;
                        });
                      },
                      child: Container(
                        width: mQuery.size.width*0.23,
                        height: mQuery.size.height*0.1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isWatch ? Color(0xffa67c00) : Colors
                                    .transparent
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                            child: Image.asset("assets/images/watch.png",
                              width: mQuery.size.width*0.16,)),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.032,),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isLaptop = false;
                          isPhone = false;
                          isWatch = false;
                          isAirpod = true;
                        });
                      },
                      child: Container(
                        width: mQuery.size.width*0.23,
                        height: mQuery.size.height*0.1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isAirpod ? Color(0xffa67c00) : Colors
                                    .transparent
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                            child: Image.asset("assets/images/airpods.png",
                              width: mQuery.size.width*0.2,)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.032,),
            Divider(
              thickness: 6,
              color: Color(0xfffbe5ba),
            ),
            SizedBox(height: mQuery.size.height*0.023,),

            if(isLaptop)
              laptopItems(context)
            else if(isPhone)
                phoneItems(context)
            else if(isWatch)
                watchItems(context)
            else
              budsItems(context),

            SizedBox(height: mQuery.size.height*0.023,)
          ],
        ),
      ),
    );
  }
}
