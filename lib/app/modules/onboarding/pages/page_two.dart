import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Color.fromARGB(255, 4, 28, 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(24.0),
            child: Material(
              borderRadius: BorderRadius.circular(30),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Text(
                  "SKIP",
                  style: GoogleFonts.montserrat(
                    color: Color.fromARGB(255, 76, 224, 210),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          Text(
            "Share",
            style: GoogleFonts.montserrat(
                fontSize: 48.0,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 76, 224, 210)),
          ),
          SizedBox(height: 16.0),
          Text(
            "Share the fruits of labour with\nyour friends and neighbors",
            style: GoogleFonts.montserrat(
              fontSize: 18.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 36.0),
          Container(
            alignment: Alignment.center,
            height: 400,
            width: 400,
            child: Image.asset(
              "assets/images/slide_2.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
