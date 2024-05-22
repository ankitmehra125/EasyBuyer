import 'package:easybuyer/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget laptopItems(BuildContext context)
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
                                  isMacbookAir = !isMacbookAir;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(isMacbookAir ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: isMacbookAir ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset
                          ("assets/images/Categories_images/laptop_images/macbookAir.png",
                          height: mQuery.size.height*0.06,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Macbook Air 2020(M1,",style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("13.3 inch, 8GB, 256GB",style: TextStyle(
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
                              text: '₹73,990',
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
                              text: '₹99,900',
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
                                  isMacbookPro = !isMacbookPro;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(isMacbookPro ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: isMacbookPro ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset("assets/images/Categories_images/laptop_images/macbookProm3.png",
                          height: mQuery.size.height*0.06,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Macbook Pro (M3 Pro,",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("14.2 inch, 18GB, 512GB",style:
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
                              text: '₹1,87,990',
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
                              text: '₹1,99,900',
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
                                  isGalaxy2 = !isGalaxy2;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(isGalaxy2 ? 'Added to '
                                            'favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: isGalaxy2 ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset
                          ("assets/images/Categories_images/laptop_images/galaxybook2pro.png",
                          height: mQuery.size.height*0.06,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Galaxy Book2 Pro",style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("(i5 12th Gen, 33.78 cm,",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("16GB, 512GB",style: TextStyle(
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
                              text: '₹69,990',
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
                              text: '₹1,29,990',
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
                                  isGalaxy4 = !isGalaxy4;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(isGalaxy4 ? 'Added to '
                                            'favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: isGalaxy4 ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset
                          ("assets/images/Categories_images/laptop_images/galaxybook4pro.png",
                          height: mQuery.size.height*0.06,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Galaxy Book4 Pro 360",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("(Intel Core Ultra 7",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("16GB, 1TB",style: TextStyle(
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
                              text: '₹1,66,990',
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
                              text: '₹2,06,989',
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