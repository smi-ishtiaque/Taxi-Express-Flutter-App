import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taxi_express/authentication/login_screen.dart';
import 'package:taxi_express/global/global.dart';
import 'package:taxi_express/authentication/signup_screen.dart';

import '../mainScreen/main_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  startTimer() {
    Timer(const Duration(seconds: 3), () async {

      if(await fAuth.currentUser != null){
        currentFirebaseUser = fAuth.currentUser;
        Navigator.push(context, MaterialPageRoute(builder: (c)=> MainScreen()));
      }
      else{
        // Navigate to the Login Screen
        Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
      }


    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/taxi_logo.png"),
                const Text(
                  "Taxi Express App",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold


                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
