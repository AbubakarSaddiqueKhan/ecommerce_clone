import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hair_cleaner_firebase/screens/home_page_design.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => ProductsHomePageDesign())));
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.fill)),
              ),
              Text("A Project By :",
                  style: GoogleFonts.caveat(
                      color: Colors.brown.shade600,
                      fontSize: screenHeight * 0.032,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          blurRadius: 1,
                          color: const Color.fromRGBO(255, 255, 255, 1)
                              .withOpacity(0.5),
                          offset: Offset(-1, -1),
                        ),
                        BoxShadow(
                          blurRadius: 1,
                          color: Colors.black.withOpacity(0.4),
                          offset: Offset(1, 1),
                        )
                      ])),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Text("MASK Group of Companies ",
                  style: GoogleFonts.caveat(
                      color: Colors.brown.shade600,
                      fontSize: screenHeight * 0.032,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          blurRadius: 1,
                          color: Colors.white.withOpacity(0.5),
                          offset: Offset(-1, -1),
                        ),
                        BoxShadow(
                          blurRadius: 1,
                          color: Colors.black.withOpacity(0.4),
                          offset: Offset(1, 1),
                        )
                      ])),
            ],
          ),
        )));
  }
}
