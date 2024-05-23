import 'package:easybuyer/screens/auth_ui/signup/signup.dart';
import 'package:easybuyer/screens/auth_ui/welcome/welcome.dart';
import 'package:easybuyer/screens/home/botnav.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:easybuyer/screens/home/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart' as path;


bool isPasswordVisible = true;

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {


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
                    "Edit Profile",
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
                padding: EdgeInsets.symmetric(
                  horizontal: mQuery.size.width*0.045
                ),
                decoration: BoxDecoration(
                  color: Color(0xfff4f2ee),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: SingleChildScrollView(
                   child: Column(
                     children: [
                       SizedBox(height: mQuery.size.height*0.065,),
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
                       SizedBox(height: mQuery.size.height*0.045,),
                       Container(
                         width: double.infinity,
                         height: mQuery.size.height*0.055,
                         padding: EdgeInsets.only(
                             left: mQuery.size.width*0.032,
                             right : mQuery.size.width*0.045
                         ),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             color: Colors.white
                         ),
                         child: TextField(
                           controller: name,
                           cursorColor: Colors.grey,
                           style: TextStyle(
                               fontFamily: 'SatoshiMedium'
                           ),
                           keyboardType: TextInputType.name,
                           decoration: InputDecoration(
                               border: InputBorder.none,
                               prefixIcon: Icon(Icons.person),
                               contentPadding: EdgeInsets.only(
                                   top: mQuery.size.height*0.004
                               ),
                               hintText: "Name",
                               hintStyle: TextStyle(
                                   color: Colors.grey
                               )
                           ),
                         ),
                       ),

                       SizedBox(height: mQuery.size.height*0.023,),
                       Container(
                         width: double.infinity,
                         height: mQuery.size.height*0.055,
                         padding: EdgeInsets.only(
                             left: mQuery.size.width*0.032,
                             right : mQuery.size.width*0.045
                         ),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             color: Colors.white
                         ),
                         child: TextField(
                           controller: email,
                           cursorColor: Colors.grey,
                           style: TextStyle(
                               fontFamily: 'SatoshiMedium'
                           ),
                           keyboardType: TextInputType.emailAddress,
                           decoration: InputDecoration(
                               border: InputBorder.none,
                               prefixIcon: Icon(Icons.email_outlined),
                               contentPadding: EdgeInsets.only(
                                   top: mQuery.size.height*0.004
                               ),
                               hintText: "Email",
                               hintStyle: TextStyle(
                                   color: Colors.grey
                               )
                           ),
                         ),
                       ),
                       SizedBox(height: mQuery.size.height*0.023,),

                       Container(
                         width: double.infinity,
                         height: mQuery.size.height*0.055,
                         padding: EdgeInsets.only(
                             left: mQuery.size.width*0.032,
                             right : mQuery.size.width*0.045
                         ),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             color: Colors.white
                         ),
                         child: TextField(
                           controller: phone,
                           cursorColor: Colors.grey,
                           style: TextStyle(
                               fontFamily: 'SatoshiMedium'
                           ),
                           maxLength: 10,
                           inputFormatters: <TextInputFormatter>[
                             FilteringTextInputFormatter.digitsOnly
                           ],
                           decoration: InputDecoration(
                               border: InputBorder.none,
                               prefixIcon: Icon(Icons.phone),
                               hintText: "Phone",
                               contentPadding: EdgeInsets.only(
                                   top : mQuery.size.height*0.04
                               ),
                               hintStyle: TextStyle(
                                   color: Colors.grey
                               ),
                               counter: SizedBox.shrink()
                           ),
                         ),
                       ),
                       SizedBox(height: mQuery.size.height*0.023,),



                       Container(
                         width: double.infinity,
                         height: mQuery.size.height*0.055,
                         padding: EdgeInsets.only(
                             left: mQuery.size.width*0.032,
                             right : mQuery.size.width*0.045
                         ),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             color: Colors.white
                         ),
                         child: TextField(
                           controller: password,
                           cursorColor: Colors.grey,
                           style: TextStyle(
                               fontFamily: 'SatoshiMedium'
                           ),
                           obscureText: isPasswordVisible,
                           decoration: InputDecoration(
                               border: InputBorder.none,
                               prefixIcon: Icon(Icons.lock),
                               hintText: "Password",
                               contentPadding: EdgeInsets.only(
                                   top: mQuery.size.height*0.005
                               ),
                               hintStyle: TextStyle(
                                   color: Colors.grey
                               ),
                               suffixIcon: GestureDetector(
                                   onTap: ()
                                   {
                                     setState(() {
                                       isPasswordVisible = !isPasswordVisible;
                                     });
                                   },
                                   child: Icon( isPasswordVisible ? Icons.visibility_off :  Icons.visibility,))
                           ),
                         ),
                       ),

                       SizedBox(height: mQuery.size.height*0.2),
                       GestureDetector(
                         onTap: () {
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) {
                                 return Profile();
                               }));
                         },
                         child: Container(
                           width: double.infinity,
                           height: mQuery.size.height * 0.055,
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
                             child: Text(
                               "Save",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 16,
                                 fontFamily: 'SatoshiBold',
                               ),
                             ),
                           ),
                         ),
                       ),
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