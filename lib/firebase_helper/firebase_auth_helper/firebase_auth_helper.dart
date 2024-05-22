import 'package:easybuyer/constants/constants.dart';
import 'package:easybuyer/constants/routes.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class FirebaseAuthHelper
{
  static FirebaseAuthHelper instance = FirebaseAuthHelper();
  FirebaseAuth _auth = FirebaseAuth.instance;
  Stream<User?> get getAuthChange => _auth.authStateChanges();

  Future<bool> login(String email, String password, BuildContext context)  async
  {
    try {
       showLoaderDialog(context);
       await _auth.signInWithEmailAndPassword(email: email, password: password);
       Navigator.of(context).pop();
       return true;
    } on FirebaseAuthException catch(error) {
      Navigator.of(context).pop();
      showMessage(error.code.toString());
      return false;
    }
  }


  Future<bool> signUp(String email, String password, BuildContext context) async
  {
    try {
      showLoaderDialog(context);
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      Navigator.of(context).pop();
      return true;
    } on FirebaseAuthException catch(error) {
      Navigator.of(context).pop();
      showMessage(error.code.toString());
      return false;
    }
  }

}


bool loginValidation(String email,String password)
{
  if(email.isEmpty && password.isEmpty)
    {
      showMessage("Both Fields are empty");
      return false;
    }
  else if(email.isEmpty)
    {
      showMessage("Email is Empty");
      return false;
    }
  else if(password.isEmpty)
    {
      showMessage("Password is Empty");
      return false;
    }
  else {
    return true;
  }
}


bool signUpValidation(
    String email,String password,String name, String phone)
{
  if(email.isEmpty && password.isEmpty && name.isEmpty && phone.isEmpty)
  {
    showMessage("All Fields are empty");
    return false;
  }
  else if(name.isEmpty)
  {
    showMessage("Name is Empty");
    return false;
  }
  else if(email.isEmpty)
  {
    showMessage("Email is Empty");
    return false;
  }
  else if(phone.isEmpty)
  {
    showMessage("Phone is Empty");
    return false;
  }
  else if(password.isEmpty)
  {
    showMessage("Password is Empty");
    return false;
  }
  else {
    return true;
  }
}