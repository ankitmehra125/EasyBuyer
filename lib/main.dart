import 'package:device_preview/device_preview.dart';
import 'package:easybuyer/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';
import 'package:easybuyer/screens/auth_ui/login/login.dart';
import 'package:easybuyer/screens/auth_ui/signup/signup.dart';
import 'package:easybuyer/screens/auth_ui/splash.dart';
import 'package:easybuyer/screens/auth_ui/welcome/welcome.dart';
import 'package:easybuyer/screens/home/botnav.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:easybuyer/screens/home/payment_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCrFKlzdrzClyAv5yqfsRPSWDul_ENGg-o",
          appId: "1:593154457044:android:cb78a4500907c0adb2aa41",
          messagingSenderId: "593154457044",
          projectId: "easybuyer-576e7"
      )
  );
  runApp(DevicePreview(
    builder: (context)
    {
      return MyApp();
    },
  ));

  // runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
        stream: FirebaseAuthHelper.instance.getAuthChange,
        builder: (context, snapshot) {
          if(snapshot.hasData)
            {
              return BotNav();
            }
          return Splash();
        }
      ),
    );
  }
}
