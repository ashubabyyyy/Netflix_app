import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/navigation/navigation_screen.dart';
import 'package:netflix_app/screens/whos_watching.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Image.asset("assets/icons/netflixicon.png"),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Email or phone number",
                hintStyle: GoogleFonts.montserrat(color: Color(0xffFDF7F7)),
                filled: true,
                fillColor: Color(0xff656060),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 25,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: GoogleFonts.montserrat(color: Color(0xffFDF7F7)),
                filled: true,
                fillColor: Color(0xff656060),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 25,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Navigationscreen()),
              );
            },
            child: Container(
              height: 50,
              width: 355,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white),
              ),
              child: Center(
                child: Text(
                  "Sign In",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Text(
            "Need help?",
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xffFFFFFF),
            ),
          ),
          SizedBox(height: 25),
          Text(
            "New to Netflix? Sign up now.",
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          Text(
            " Sign in is protected by Google",
            style: GoogleFonts.montserrat(fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            " reCAPTCHA to ensure you’re not a bot.",
            style: GoogleFonts.montserrat(fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            " Learn more.",
            style: GoogleFonts.montserrat(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
