import 'package:easybuyer/constants/routes.dart';
import 'package:easybuyer/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';
import 'package:easybuyer/screens/auth_ui/signup/signup.dart';
import 'package:easybuyer/screens/home/botnav.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Color(0xfff4f2ee),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kToolbarHeight),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios),
              ),
              SizedBox(height: mQuery.size.height * 0.023),
              Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'SatoshiBold',
                  fontSize: 17,
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.016),
              Text(
                "Welcome Back to E-Commerce App",
                style: TextStyle(
                  fontFamily: 'SatoshiMedium',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.065),
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
                  controller: email,
                  cursorColor: Colors.grey,
                  style: TextStyle(fontFamily: 'SatoshiMedium'),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.023),
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
                  controller: password,
                  cursorColor: Colors.grey,
                  style: TextStyle(fontFamily: 'SatoshiMedium'),
                  obscureText: isPasswordVisible,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      child: Icon(
                        isPasswordVisible ? Icons.visibility_off :  Icons.visibility,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.055),
              GestureDetector(
                onTap: () async {
                  bool isValidated = loginValidation(email.text, password.text);
                  if (isValidated) {
                    bool isLogined = await FirebaseAuthHelper.instance.login(email.text, password.text, context);
                    if (isLogined) {
                      Routes.instance.pushAndRemoveUntil(BotNav(), context);
                    }
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff966f33),
                        Color(0xffac7a48),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontFamily: 'SatoshiBold',
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.032),
              Center(
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontFamily: 'SatoshiBold',
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.016),
              GestureDetector(
                onTap: () {
                  Routes.instance.push(SignUp(), context);
                },
                child: Center(
                  child: Text(
                    "Create an account?",
                    style: TextStyle(
                      fontFamily: 'SatoshiBold',
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
