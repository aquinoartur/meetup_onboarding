import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(24.0),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Text(
                  "SKIP",
                  style: GoogleFonts.montserrat(
                    color: Color.fromARGB(255, 76, 224, 210),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Text(
            "Connect",
            style: GoogleFonts.montserrat(
              fontSize: 48.0,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 4, 28, 22),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            "Connect with the vibrant community\nof home gardeners near and far",
            style: GoogleFonts.montserrat(
              fontSize: 18.0,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 36.0),
          Container(
            alignment: Alignment.center,
            height: 400,
            width: 400,
            child: Image.asset(
              "assets/images/slide_3.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
