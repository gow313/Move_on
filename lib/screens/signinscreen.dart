import 'package:cat/route/routing.dart';
import 'package:cat/screens/homescreen.dart';
import 'package:cat/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isemail = true;
  bool ismobile = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Icon(
                        Iconsax.arrow_left,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(SignUpScreen());
                  },
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.dmSans(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "Step into your self-care routine again.",
                      style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      ismobile = !ismobile;
                      isemail = !isemail;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: screenWidth / 2.3,
                    decoration: BoxDecoration(
                        color: isemail
                            ? Colors.black
                            : Color.fromRGBO(242, 97, 63, 1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: Center(
                      child: Text(
                        "Email",
                        style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      ismobile = !ismobile;
                      isemail = !isemail;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: screenWidth / 2.3,
                    decoration: BoxDecoration(
                        color: ismobile
                            ? Colors.black
                            : Color.fromRGBO(242, 97, 63, 1),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Center(
                      child: Text(
                        "Mobile",
                        style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            if (isemail)
              emailFunction(screenWidth)
            else
              numberFunction(screenWidth),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Get.offNamed(AppRoute.about);
              },
              child: Container(
                height: 50,
                width: screenWidth / 1.5,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 97, 63, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "OR",
                style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Image(image: AssetImage("assets/google.png")),
            )
          ],
        ),
      ),
    );
  }

  Column numberFunction(double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mobile Number",
          style: GoogleFonts.dmSans(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: screenWidth / 1.15,
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
              color: Color.fromARGB(271, 271, 271, 1),
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(color: Colors.grey)),
          child: TextFormField(
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Iconsax.call),
              hintText: 'Enter your Number',
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "OTP",
          style: GoogleFonts.dmSans(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: screenWidth / 1.15,
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
              color: Color.fromARGB(271, 271, 271, 1),
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(color: Colors.grey)),
          child: TextFormField(
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Iconsax.eye),
              hintText: 'Enter OTP',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Column emailFunction(double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: GoogleFonts.dmSans(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: screenWidth / 1.15,
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
              color: Color.fromARGB(271, 271, 271, 1),
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(color: Colors.grey)),
          child: TextFormField(
            textAlign: TextAlign.start,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Iconsax.message),
              hintText: 'Email',
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Password",
          style: GoogleFonts.dmSans(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: screenWidth / 1.15,
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
              color: Color.fromARGB(271, 271, 271, 1),
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(color: Colors.grey)),
          child: TextFormField(
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Iconsax.eye),
              hintText: 'Enter Your Password',
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Forget Password ?",
              style: GoogleFonts.dmSans(color: Color.fromRGBO(242, 97, 63, 1)),
            ))
      ],
    );
  }
}
