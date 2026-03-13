import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilesAndMore extends StatelessWidget {
  const ProfilesAndMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Profiles & More",
          style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          SizedBox(
            height: 90,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: Profiles.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            image: AssetImage(Profiles[index]['image']),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      Profiles[index]['text'],
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.edit, color: Colors.white, size: 18),
              SizedBox(width: 5),
              Text(
                "Manage Profiles",
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 12,
                    ),
                    child: Container(
                      height: 57,
                      width: 370,
                      decoration: BoxDecoration(
                        color: Color(0xff433C3C),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              manageProfiles[index]['icon'],
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            manageProfiles[index]['name'],
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          SizedBox(height: 100),
          Center(
            child: Text(
              "Sign Out",
              style: GoogleFonts.montserrat(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List Profiles = [
  {'image': "assets/images/smile1.png", 'text': "You"},
  {'image': "assets/images/smile2.png", 'text': "Saurav"},
  {'image': "assets/images/smile3.png", 'text': "Nishan"},
  {'image': "assets/images/smile4.png", 'text': "Nirvaya"},
  {'image': "assets/images/smile5.png", 'text': "Saugat"},
];

List manageProfiles = [
  {'icon': Icons.notifications, 'name': "Notifications"},
  {'icon': Icons.list, 'name': "My List"},
  {'icon': Icons.settings, 'name': "App Settings"},
  {'icon': Icons.person, 'name': "Account"},
  {'icon': Icons.help_outline_sharp, 'name': "Help"},
];
