import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Aboutscreen extends StatefulWidget {
  const Aboutscreen({super.key});

  @override
  State<Aboutscreen> createState() => _AboutscreenState();
}

class _AboutscreenState extends State<Aboutscreen> {
  int pageindex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.only(top: 50),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "About Yourself",
                style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: pageindex == 0
                          ? Color.fromRGBO(242, 97, 63, 1)
                          : Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: screenWidth / 2.5,
                    height: 2,
                    color: Colors.black,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: pageindex == 1
                          ? Color.fromRGBO(242, 97, 63, 1)
                          : Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: screenWidth / 2.5,
                    height: 2,
                    color: Colors.black,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: pageindex == 2
                          ? Color.fromRGBO(242, 97, 63, 1)
                          : Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: screenHeight * 0.4,
              child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      pageindex = value;
                    });
                  },
                  itemCount: about.length,
                  itemBuilder: (context, i) {
                    var detailsList = about[i]['details'] ?? [];
                    return Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: detailsList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: screenWidth / 1.2,
                                  padding: EdgeInsets.only(left: 12),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(271, 271, 271, 1),
                                      borderRadius: BorderRadius.circular(6.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: detailsList[index],
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              );
                            })
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Center(
              child: InkWell(
                onTap: () => {
                  if (pageindex < about.length - 1)
                    {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear,
                      )
                    }
                  // else
                  //   {Get.off(loginScreen())}
                },
                child: Container(
                  height: 50,
                  width: screenWidth / 1.2,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(242, 97, 63, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      pageindex == about.length - 1 ? "Lets's Go" : "Sumbit",
                      style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List about = [
  {
    "details": ["username", "DOB", "Gender", "Email"]
  },
  {
    "details": [
      "Your current weight",
      "Your current Height",
      "Any chronic Problems(if Any)",
      "Veg (or) Non Veg"
    ]
  },
  {
    "details": [
      "Have been to gym already ?",
      "How frequently you workout ?",
      "What is your goal in gym ?",
    ]
  }
];
