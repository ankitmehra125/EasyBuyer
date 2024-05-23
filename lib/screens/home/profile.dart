import 'dart:io';

import 'package:easybuyer/screens/auth_ui/welcome/welcome.dart';
import 'package:easybuyer/screens/home/botnav.dart';
import 'package:easybuyer/screens/home/editprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool isNotification = true;

  late File _image;
  bool _imageSelected = false;

  @override
  void initState() {
    super.initState();
    loadImage();
  }

  Future<void> loadImage() async {
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = path.join(directory.path, 'profile_picture.jpg');
    setState(() {
      if (File(imagePath).existsSync()) {
        _image = File(imagePath);
        _imageSelected = true;
      }
    });
  }

  Future getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      final directory = await getApplicationDocumentsDirectory();
      final imagePath = path.join(directory.path, 'profile_picture.jpg');
      setState(() {
        _image = File(pickedFile.path);
        _imageSelected = true;
      });
      _image.copy(imagePath);
    } else {
      print('No image selected.');
    }
  }

  void _showSelectionDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.camera),
                title: Text(
                  'Camera',
                  style: TextStyle(fontFamily: 'SatoshiMedium'),
                ),
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text(
                  'Gallery',
                  style: TextStyle(fontFamily: 'SatoshiMedium'),
                ),
                onTap: () {
                  getImage(ImageSource.gallery);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff4f2ee),
      body: Column(
        children: [
          SizedBox(height: mQuery.size.height * 0.2),
          Center(
            child: GestureDetector(
              onTap: () {
                _showSelectionDialog(context);
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: _imageSelected
                    ? FileImage(_image)
                    : AssetImage("assets/images/profilePicture.png") as ImageProvider,
              ),
            ),
          ),
          SizedBox(height: mQuery.size.height*0.055,),
          Container(
            width: double.infinity,
            height: mQuery.size.height*0.24,
            padding: EdgeInsets.symmetric(
              horizontal: mQuery.size.width*0.03
            ),
            margin: EdgeInsets.symmetric(
              horizontal: mQuery.size.width*0.045
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xffF1E5AC)
              ),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return EditProfile();
                    }));
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          "assets/images/profile_images/profile-line.svg"),
                      SizedBox(width: mQuery.size.width * 0.032,),
                      Text("Edit profile information", style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SatoshiMedium'
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    SvgPicture.asset("assets/images/profile_images/bellIcon.svg"),
                    SizedBox(width: mQuery.size.width * 0.032,),
                    Text("Notifications", style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SatoshiMedium'
                    ),),
                    Expanded(child: SizedBox(),),
                    Text(isNotification ? "ON" : "OFF", style: TextStyle(
                        color: Color(0xffda9100),
                        fontSize: 13,
                        fontFamily: 'SatoshiMedium'
                    ),),
                    Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        value: isNotification,
                        onChanged: (value)
                        {
                          setState(() {
                            isNotification = value!;
                          });
                        },
                        inactiveTrackColor: Color(0xffE5E4E2),
                        activeTrackColor: Color(0xff32CD32),
                      ),
                    )
                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    SvgPicture.asset("assets/images/profile_images/walletIcon.svg"),
                    SizedBox(width: mQuery.size.width * 0.032,),
                    Text("Wallet", style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SatoshiMedium'
                    ),)
                  ],
                ),
                SizedBox(height: mQuery.size.height*0.016,),
                GestureDetector(
                  onTap: ()
                  {
                    logoutPop(context);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/images/profile_images/loginIcon.svg"),
                      SizedBox(width: mQuery.size.width * 0.032,),
                      Text( "Log Out" ,
                        style:
                      TextStyle(
                          color: Color(0xffFF2120),
                          fontFamily: 'SatoshiMedium'
                      ),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void logoutPop(BuildContext context) {
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
                      'Logout',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffCA3939),
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                    SizedBox(height: mQuery.size.height * 0.032,),
                    Center(
                      child: Text(
                        "Are you sure you want to log out?",
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
                            "YES, Logout",
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
}
