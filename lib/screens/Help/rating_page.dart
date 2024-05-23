
import 'package:easybuyer/screens/home/botnav.dart';
import 'package:easybuyer/screens/home/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var userName = "Ankit";
  TextEditingController messageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color:  Color(0xff966f33),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.0347),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height * 0.058,
                bottom: mQuery.size.height * 0.03,
                left: mQuery.size.width * 0.045,
                right: mQuery.size.width * 0.045,
              ),
              child: GestureDetector(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _scaffoldKey.currentState!.openDrawer();
                        });
                      },
                      child: Icon(Icons.menu, color: Colors.white,
                        size: mQuery.size.height*0.04,),
                    ),
                    SizedBox(
                      width: mQuery.size.width * 0.045,
                    ),
                    Text(
                      "Rate Your Experience",
                      style: TextStyle(
                          fontSize: mQuery.size.height * 0.027,
                          fontFamily: 'SatoshiBold',
                          color: Colors.white),
                    )
                  ],
                ),
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 1,
                      offset: Offset(3, 3), // changes the position of the shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.045),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: mQuery.size.height * 0.03,
                        ),
                        Text(
                          "Hey $userName! Let us know about \n     your "
                              "experience with us.",
                          style: TextStyle(
                              fontSize: mQuery.size.height * 0.02,
                              fontFamily: 'SatoshiMedium'),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.055,
                        ),
                        SvgPicture.asset(
                          "assets/images/mainlogo.svg",
                          color: Colors.black,
                          height: mQuery.size.height * 0.037,
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.045,
                        ),
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Color(0xff966f33),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.055,
                        ),
                        Row(
                          children: [
                            Text(
                              "Message",
                              style: TextStyle(
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: mQuery.size.height * 0.022),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.02,
                        ),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.175,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.3,
                                blurRadius: 10,
                                offset:
                                Offset(0, 0), // changes the position of the shadow
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: messageController,
                            cursorColor: Colors.black54,
                            maxLines: null,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write message here",
                                hintStyle: TextStyle(
                                    fontSize: mQuery.size.height * 0.02,
                                    fontFamily: 'SatoshiMedium',
                                    color: Colors.black54),
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 8)),
                          ),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.08,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: ()
                              {
                                // Navigator.push(context, MaterialPageRoute(builder: (context){
                                //   return ReportDisputePage();
                                // }));
                              },
                              child: SvgPicture.asset("assets/images/alert.svg",
                                width: mQuery.size.width*0.058,),
                            ),
                            SizedBox(width: mQuery.size.width*0.033,),

                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.07,),
                        GestureDetector(
                          onTap: () {
                            _showConfirmationDialog();
                          },
                          child: Container(
                            width: double.infinity,
                            height: mQuery.size.height * 0.06,
                            decoration: BoxDecoration(
                                color: Color(0xff966f33),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.024,
                                    color: Colors.white,
                                  fontFamily: 'SatoshiBold',),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          title: Center(
            child: Text(
              "Thank You!",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'SatoshiBold',
              ),
            ),
          ),
          content: Container(
            height: mQuery.size.height*0.06,
            padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.033),
            child: Column(
              children: [
                Text(
                  "Your review is successfully ",
                  style: TextStyle(
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
                Text(
                  "submitted!",
                  style: TextStyle(
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return BotNav();
                }));
              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height * 0.06,
                decoration: BoxDecoration(
                  color: Color(0xff966f33),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Okay",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SatoshiBold',
                      fontSize: mQuery.size.height * 0.024,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

}
