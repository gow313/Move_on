import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Foryouscreen extends StatefulWidget {
  const Foryouscreen({super.key});

  @override
  State<Foryouscreen> createState() => _ForyouscreenState();
}

class _ForyouscreenState extends State<Foryouscreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today's Workout",
                style: GoogleFonts.dmSans(color: Colors.black),
              ),
              Icon(Iconsax.arrow_right),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: screenHeight * 0.12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: screenHeight * 0.06,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(242, 97, 63, 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "SH",
                        style: GoogleFonts.dmSans(color: Colors.white),
                      )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shoulder Class",
                            style: GoogleFonts.dmSans(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        Text("Intermediate",
                            style: GoogleFonts.dmSans(
                                color: Color.fromRGBO(242, 97, 63, 1),
                                fontSize: 10)),
                        Text("7 Classes",
                            style: GoogleFonts.dmSans(
                              color: Colors.black,
                              fontSize: 10,
                            )),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.arrow_downward)
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today’s Meal",
                style: GoogleFonts.dmSans(color: Colors.black),
              ),
              Icon(Iconsax.arrow_right),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: screenHeight * 0.12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: screenHeight * 0.06,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(242, 97, 63, 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Icon(
                          Icons.fireplace_sharp,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Intense Protein Day",
                            style: GoogleFonts.dmSans(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        Text("4 Meals",
                            style: GoogleFonts.dmSans(
                                color: Color.fromRGBO(242, 97, 63, 1),
                                fontSize: 10)),
                        Text("1500 Calories | 700g Protien",
                            style: GoogleFonts.dmSans(
                              color: Colors.black,
                              fontSize: 10,
                            )),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.arrow_downward)
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text("Attendence",
              style: GoogleFonts.dmSans(
                color: Colors.black,
                fontSize: 16,
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            height: screenHeight * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Blutooth",
                    style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 12,
                    )),
                Transform.scale(
                  scale: 0.55,
                  child: Switch(
                    value: isSwitched,
                    onChanged: toggleSwitch,
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: screenHeight * 0.06,
                width: screenWidth / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Admin",
                      style:
                          GoogleFonts.dmSans(color: Colors.black, fontSize: 10),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Iconsax.tick_circle,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.06,
                width: screenWidth / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Connected",
                      style:
                          GoogleFonts.dmSans(color: Colors.black, fontSize: 10),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "1m ago",
                      style:
                          GoogleFonts.dmSans(color: Colors.black, fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }
}
