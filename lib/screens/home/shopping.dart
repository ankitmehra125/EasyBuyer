import 'package:easybuyer/screens/home/home.dart';
import 'package:easybuyer/screens/home/payment_page.dart';
import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
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
          children: [
            SizedBox(height: mQuery.size.height*0.16,),
            if(isMacbookAir && isMacbookPro && isGalaxy2 && isGalaxy2)
              Column(
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
              )
            else if(isMacbookAir && isMacbookPro)
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
                )
            else if(isMacbookAir)
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
              )
            else if(isMacbookPro)
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

            else if(isGalaxy2 && isGalaxy4)
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
                  )
            else if(isGalaxy2)
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
                    )
            else if(isGalaxy4)
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

                    else if(iss24ultra && is15promax)
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
                        )

            else if(iss24ultra)
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
                        )
             else if(is15promax)
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

             else if(iswatchUltra2)
                       Row(
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
                         ],
                       )

                              else if(isClassic6)
                                  Row(
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
                                      ),
                                    ],
                                  )
            else
              Center(
                child: Column(
                  children: [
                    SizedBox(height: mQuery.size.height*0.14,),
                    Image.asset("assets/images/emptyWishList.png"),
                    SizedBox(height: mQuery.size.height*0.032,),
                    Center(
                      child: Text("Your WishList is Empty",style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'SatoshiBold'
                      ),),
                    )
                  ],
                ),
              ),



            (isMacbookAir || isMacbookPro || isGalaxy2 || isGalaxy4 ||
                iswatchUltra2 ||  isClassic6 ||
                iss24ultra || is15promax || (isMacbookAir && isMacbookPro)) ?
            Column(
              children: [
                SizedBox(height: mQuery.size.height*0.2),
                GestureDetector(
                  onTap : ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return PaymentPage();
                    }));
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: mQuery.size.width*0.3,
                      height: mQuery.size.height*0.045,
                      padding: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width*0.03
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green.shade500
                           ),
                          borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Image.asset(
                        "assets/images/BottomNav_images/shopping.png",
                        width: mQuery.size.width * 0.06),
                            Text("Buy Now",style: TextStyle(
                              fontSize: 13,
                                fontFamily: 'SatoshiBold'
                            ),)
                          ],
                      ),
                    ),
                  ),
                ),
              ],
            ) : Container(),


          ],
        ),
      ),
    );
  }
}
