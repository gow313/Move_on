import 'package:cat/route/Approute.dart';
import 'package:cat/route/routing.dart';
import 'package:cat/screens/signinscreen.dart';
import 'package:cat/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/onboardimg.png'))),
          ),
          Align(
            alignment: Alignment(0.0, 0.68),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Welcome \nTo Dance-On",
                  style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.normal),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(
                      AppRoute.signin,
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
