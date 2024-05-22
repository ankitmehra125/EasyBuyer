import 'package:easybuyer/constants/routes.dart';
import 'package:easybuyer/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';
import 'package:easybuyer/screens/auth_ui/login/login.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();

  bool isPasswordVisible = true;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kToolbarHeight,),
            GestureDetector(
                onTap: ()
                {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios,)),
            SizedBox(height: mQuery.size.height*0.023,),
            Text("Create Account",style: TextStyle(
                fontFamily: 'SatoshiBold',
                fontSize: 17
            ),),
            SizedBox(height: mQuery.size.height*0.016,),
            Text("Welcome Back to E-Commerce App",style: TextStyle(
                fontFamily: 'SatoshiMedium',
                color: Colors.black
            ),),

            SizedBox(height: mQuery.size.height*0.065,),
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

            SizedBox(height: mQuery.size.height*0.065),

            GestureDetector(
              onTap: () async
              {
                bool isValidated = signUpValidation(email.text, password
                    .text,name.text, phone.text);
                if (isValidated) {
                  bool isLogined = await FirebaseAuthHelper.instance.
                   signUp(email.text, password.text, context);
                  if (isLogined) {
                    Routes.instance.pushAndRemoveUntil(Home(), context);
                  }
                }
              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
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
                  child: Text("Create an Account",style: TextStyle(
                      fontFamily: 'SatoshiBold',
                      fontSize: 16,
                      color: Colors.white
                  ),),
                ),
              ),
            ),

            SizedBox(height: mQuery.size.height*0.032,),
            Center(
              child: Text("Already have an account?",style: TextStyle(
                  fontFamily: 'SatoshiBold'
              ),),
            ),
            SizedBox(height: mQuery.size.height*0.016,),
            GestureDetector(
              onTap: ()
              {
                Navigator.of(context).pop();
              },
              child: Center(
                child: Text("Login",style: TextStyle(
                    fontFamily: 'SatoshiBold',
                    color: Colors.red
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}


