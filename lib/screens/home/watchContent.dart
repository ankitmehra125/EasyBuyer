import 'package:easybuyer/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget watchItems(BuildContext context)
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
                                  iswatchUltra2 = !iswatchUltra2;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(iswatchUltra2 ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: iswatchUltra2 ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset("assets/images/Categories_images/watch_images/watchultra2.png",
                          height: mQuery.size.height*0.08,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Apple Watch Ultra 2,",style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("GPS + Cellular 49 mm",style: TextStyle(
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
                              text: '₹86,900',
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
                              text: '₹89,900',
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
                                  isClassic6 = !isClassic6;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(isClassic6 ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: isClassic6 ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset
                          ("assets/images/watch.png",
                          height: mQuery.size.height*0.08,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Galaxy Watch6 Classic",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("LTE 47 mm",style:
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
                              text: '₹43,999',
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
                              text: '₹50,999',
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
                                  is5pro = !is5pro;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(is5pro ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: is5pro ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset
                          ("assets/images/Categories_images/watch_images/watch5pro.png",
                          height: mQuery.size.height*0.08,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Galaxy Watch 5 Pro",style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("LTE 45 mm",style:
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
                              text: '₹49,999',
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
                              text: '₹54,999',
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
                                  isseries9 = !isseries9;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(isseries9 ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: isseries9 ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset
                          ("assets/images/Categories_images/watch_images/series9.png",
                          height: mQuery.size.height*0.08,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Apple Watch Series 9",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("GPS + Cellular 45mm",style:
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
                              text: '₹52,100',
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
                              text: '₹54,900',
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