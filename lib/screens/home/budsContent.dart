import 'package:easybuyer/screens/home/home.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget budsItems(BuildContext context)
{
  var mQuery = MediaQuery.of(context);
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mQuery.size.width*0.045
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: mQuery.size.width*0.43,
                  height: mQuery.size.height*0.24,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*0.03
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap : ()
                              {
                                setState(() {
                                  isbud2pro = !isbud2pro;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(isbud2pro ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: isbud2pro ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset("assets/images/Categories_images/airpod_images/bud2pro.png",
                          height: mQuery.size.height*0.08,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Galaxy Buds2 Pro,",style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("Bluetooth Headset",style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      SizedBox(height: mQuery.size.height*0.005,),
                      Row(
                        children: [
                          Container(
                            width: mQuery.size.width*0.12,
                            height: mQuery.size.height*0.02,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xff388e3c)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("4.9",style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SatoshiBold',
                                    color: Colors.white
                                ),),
                                Icon(Icons.star,color: Colors.white,
                                  size: 10,)
                              ],
                            ),
                          ),
                          SizedBox(width: mQuery.size.width*0.02,),
                          Text("(120)",style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'SatoshiBold',
                              color: Colors.black
                          ),)
                        ],
                      ),
                      SizedBox(height: mQuery.size.height*0.005,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '₹12,972',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SatoshiBold',
                                  fontSize: 12
                              ),
                            ),
                            TextSpan(
                              text: ' / ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: 12
                              ),
                            ),
                            TextSpan(
                              text: '₹19,999',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: mQuery.size.width*0.43,
                  height: mQuery.size.height*0.24,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*0.03
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap : ()
                              {
                                setState(() {
                                  isbud2 = !isbud2;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(isbud2 ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: isbud2 ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset("assets/images/Categories_images/airpod_images/galaxyBud.png",
                          height: mQuery.size.height*0.1,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Galaxy Buds 2",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("Bluetooth Headset ",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      SizedBox(height: mQuery.size.height*0.005,),
                      Row(
                        children: [
                          Container(
                            width: mQuery.size.width*0.12,
                            height: mQuery.size.height*0.02,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xff388e3c)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("4.8",style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SatoshiBold',
                                    color: Colors.white
                                ),),
                                Icon(Icons.star,color: Colors.white,
                                  size: 10,)
                              ],
                            ),
                          ),
                          SizedBox(width: mQuery.size.width*0.02,),
                          Text("(110)",style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'SatoshiBold',
                              color: Colors.black
                          ),)
                        ],
                      ),
                      SizedBox(height: mQuery.size.height*0.005,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '₹8,499',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SatoshiBold',
                                  fontSize: 12
                              ),
                            ),
                            TextSpan(
                              text: ' / ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: 12
                              ),
                            ),
                            TextSpan(
                              text: '₹13,990',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: 11,
                                  decoration: TextDecoration.lineThrough
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: mQuery.size.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: mQuery.size.width*0.43,
                  height: mQuery.size.height*0.24,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*0.03
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap : ()
                              {
                                setState(() {
                                  ispixelbudpro = !ispixelbudpro;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(ispixelbudpro ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: ispixelbudpro ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset
                          ("assets/images/Categories_images/airpod_images/pixelBud.png",
                          height: mQuery.size.height*0.1,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Pixel Buds Pro",style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("Bluetooth Headset",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      SizedBox(height: mQuery.size.height*0.005,),
                      Row(
                        children: [
                          Container(
                            width: mQuery.size.width*0.12,
                            height: mQuery.size.height*0.02,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xff388e3c)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("4.7",style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SatoshiBold',
                                    color: Colors.white
                                ),),
                                Icon(Icons.star,color: Colors.white,
                                  size: 10,)
                              ],
                            ),
                          ),
                          SizedBox(width: mQuery.size.width*0.02,),
                          Text("(100)",style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'SatoshiBold',
                              color: Colors.black
                          ),)
                        ],
                      ),
                      SizedBox(height: mQuery.size.height*0.005,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '₹12,990',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SatoshiBold',
                                  fontSize: 12
                              ),
                            ),
                            TextSpan(
                              text: ' / ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: 12
                              ),
                            ),
                            TextSpan(
                              text: '₹19,990',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: 11,
                                  decoration: TextDecoration.lineThrough
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: mQuery.size.width*0.43,
                  height: mQuery.size.height*0.24,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*0.03
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap : ()
                              {
                                setState(() {
                                  isairpodpro2 = !isairpodpro2;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(isairpodpro2 ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: isairpodpro2 ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset("assets/images/airpods.png",
                          height: mQuery.size.height*0.08,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("AirPods Pro2",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("(2nd generation)",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      SizedBox(height: mQuery.size.height*0.005,),
                      Row(
                        children: [
                          Container(
                            width: mQuery.size.width*0.12,
                            height: mQuery.size.height*0.02,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xff388e3c)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("4.7",style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'SatoshiBold',
                                    color: Colors.white
                                ),),
                                Icon(Icons.star,color: Colors.white,
                                  size: 10,)
                              ],
                            ),
                          ),
                          SizedBox(width: mQuery.size.width*0.02,),
                          Text("(100)",style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'SatoshiBold',
                              color: Colors.black
                          ),)
                        ],
                      ),
                      SizedBox(height: mQuery.size.height*0.005,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '₹24,400',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SatoshiBold',
                                  fontSize: 12
                              ),
                            ),
                            TextSpan(
                              text: ' / ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: 12
                              ),
                            ),
                            TextSpan(
                              text: '₹24,900',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: 11,
                                  decoration: TextDecoration.lineThrough
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }
  );
}