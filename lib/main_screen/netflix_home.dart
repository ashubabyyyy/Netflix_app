import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/main_screen/profiles_and_more.dart';

class NetflixHome extends StatelessWidget {
  const NetflixHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/netflix.png", height: 40),
                    const Spacer(),
                    const Icon(Icons.search, color: Colors.white),
                    const SizedBox(width: 16),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ProfilesAndMore()),
                        );
                      },
                      child: Image.asset(
                        "assets/images/smile1.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _menuText("TV Shows"),
                    _menuText("Movies"),
                    _menuText("Categories ▼"),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 360,
                  width: 271,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/kuchkuch.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Center(
                child: Text(
                  "Charming • Feel-Good • Dramedy • Movie",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(height: 12),

            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _iconButton(Icons.add, "My List"),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    icon: const Icon(Icons.play_arrow),
                    label: const Text("Play"),
                    onPressed: () {},
                  ),
                  _iconButton(Icons.info_outline, "Info"),
                ],
              ),

              const SizedBox(height: 20),

              
              _movieSection("Releases in the Past Year", releasesPastYear),
              _movieSection("Continue Watching for Drashti", continueWatching),
              _movieSection("Suspenseful TV Shows", suspenseShows),
              _movieSection("Selected for You Today", selectedForYou),
              _movieSection("My List", myList),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _movieSection(String title, List<String> posters) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: posters.length,
            itemBuilder: (context, index) {
              return Container(
                width: 120,
                margin: const EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage(posters[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  static Widget _menuText(String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
    );
  }

  static Widget _iconButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}

List<String> releasesPastYear = [
  "assets/images/moneyheist.png",
  "assets/images/strangerthings.png",
  "assets/images/peakyblinders.png",
  "assets/images/rrr.png",
];

List<String> continueWatching = [
  "assets/images/bheed.png",
  "assets/images/holiday.png",
  "assets/images/rrr.png",
  "assets/images/strangerthings.png",
];

List<String> suspenseShows = [
  "assets/images/moneyheist.png",
  "assets/images/strangerthings.png",
  "assets/images/peakyblinders.png",
  "assets/images/holiday.png",
];

List<String> selectedForYou = [
  "assets/images/bheed.png",
  "assets/images/moneyheist.png",
  "assets/images/rrr.png",
  "assets/images/crashlandingonyou.png",
];

List<String> myList = [
  "assets/images/boss.png",
  "assets/images/crashlandingonyou.png",
  "assets/images/holiday.png",
  "assets/images/rrr.png",
];
