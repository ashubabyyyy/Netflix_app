import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/login/signin/signin.dart';

class CreateOrLogin extends StatefulWidget {
  const CreateOrLogin({super.key});

  @override
  State<CreateOrLogin> createState() => _CreateOrLoginState();
}

class _CreateOrLoginState extends State<CreateOrLogin> {
  final TextEditingController _emailController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Text(
                "Ready to watch?",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Enter your email to create or sign in to",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "your account.",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 12),
                child: TextFormField(
                  controller: _emailController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: const TextStyle(color: Colors.white70),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 25),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff19CD36)),
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: _isLoading
                    ? null
                    : () {
                        if (_emailController.text.trim().isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Please enter an email")),
                          );
                          return;
                        }
                        // Navigate to Signin screen and pass email
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                Signin(prefilledEmail: _emailController.text),
                          ),
                        );
                      },
                child: Container(
                  height: 46,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color(0xffC60A0A),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: _isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : Text(
                            'GET STARTED',
                            style: GoogleFonts.montserrat(
                              fontSize: 21,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}