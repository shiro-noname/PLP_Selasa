import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool isHome = false;
  bool isAbout = false;
  bool isContact = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.blueAccent,
          ),
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                isHome = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHome = false;
              });
            },
            child: Text(
              "Home",
              style: isHome
                  ? GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    )
                  : GoogleFonts.googleSans(color: Colors.yellowAccent),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.blueAccent,
          ),
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                isAbout = true;
              });
            },
            onExit: (_) {
              setState(() {
                isAbout = false;
              });
            },
            child: Text(
              "About",
              style: isAbout
                  ? GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    )
                  : GoogleFonts.googleSans(color: Colors.yellowAccent),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.blueAccent,
          ),
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                isContact = true;
              });
            },
            onExit: (_) {
              setState(() {
                isContact = false;
              });
            },
            child: Text(
              "Contact",
              style: isContact
                  ? GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    )
                  : GoogleFonts.googleSans(color: Colors.yellowAccent),
            ),
          ),
        ),
      ],
    );
  }
}
