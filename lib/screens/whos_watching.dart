import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/main_screen/netflix_home.dart';

class WhosWatching extends StatelessWidget {
  const WhosWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Expanded(child: SizedBox()),

                  Image.asset("assets/images/netflix.png", height: 50),

                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.edit, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),

            Text(
              "Who’s Watching?",
              style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: GridView.builder(
                  itemCount: profile.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => NetflixHome()),
                          );
                        }
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(profile[index]['image']),
                              ),
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            profile[index]["name"],
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List profile = [
  {'image': "assets/images/smile1.png", 'name': "Ashutosh"},
  {'image': "assets/images/smile2.png", 'name': "Saurav"},
  {'image': "assets/images/smile3.png", 'name': "Nishan"},
  {'image': "assets/images/smile4.png", 'name': "Nirvaya"},
  {'image': "assets/images/smile5.png", 'name': "Saugat"},
];
