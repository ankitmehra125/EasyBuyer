import 'package:easybuyer/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget phoneItems(BuildContext context)
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
                                  iss24ultra = !iss24ultra;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(iss24ultra ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: iss24ultra ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset
                          ("assets/images/Categories_images/phone_images/s24ultra.png",
                          height: mQuery.size.height*0.08,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Galaxy S24 Ultra,",style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("6.8 inch, 12GB, 256GB",style: TextStyle(
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
                              text: '₹1,29,999',
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
                              text: '₹1,34,999',
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
                                  is15promax = !is15promax;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color(0xffa1f3a1),
                                    content: Center(
                                        child: Text(iss24ultra ? 'Added to favorites'
                                            : 'Removed from favorites',style: TextStyle(
                                            color: Color(0xff3d8b15),
                                            fontFamily: 'SatoshiBold'
                                        ),)),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: Icon(Icons.favorite,
                                color: is15promax ? Colors.red : Color
                                  (0xffc7c7c7),))
                        ],
                      ),
                      Center(
                        child: Image.asset
                          ("assets/images/Categories_images/phone_images/15promax"
                            ".png",
                          height: mQuery.size.height*0.07,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Iphone 15 Pro Max",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("6.7 inch, 12GB, 256GB",style:
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
                              text: '1,48,900',
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
                              text: '₹1,59,900',
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
                  height: mQuery.size.height*0.22,
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
                      Center(
                        child: Image.asset
                          ("assets/images/Categories_images/phone_images/zfold5.png",
                          height: mQuery.size.height*0.07,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Galaxy Z Fold5",style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("6.2 inch,",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("12GB, 256GB",style: TextStyle(
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
                              text: '₹1,54,999',
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
                              text: '₹1,59,999',
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
                  height: mQuery.size.height*0.22,
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
                      Center(
                        child: Image.asset
                          ("assets/images/Categories_images/phone_images/zflip5"
                            ".png",
                          height: mQuery.size.height*0.07,),
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Center(
                        child: Text("Galaxy Z Flip5",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("6.7 inch,",style:
                        TextStyle(
                            fontSize: 11,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      Center(
                        child: Text("8GB, 256GB",style: TextStyle(
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
                              text: '₹99,999',
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
                              text: '₹1,02,999',
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