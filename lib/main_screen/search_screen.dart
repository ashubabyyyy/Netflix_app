import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 12,
                ),
                child: Image.asset(
                  "assets/images/smile1.png",
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
          TextFormField(
            controller: _controller,
            style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              prefixIcon: Icon(Icons.search, color: Colors.white),
              suffixIcon: Icon(Icons.mic, color: Colors.white),
              hintText: "Search games, show...",
              hintStyle: GoogleFonts.montserrat(
                fontSize: 18,
                color: Colors.white,
              ),
              fillColor: Color(0xff433C3C),
              contentPadding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 12,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            itemCount: searchMovie.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12,
                        ),
                        child: Container(
                          height: 70,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage(searchMovie[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        searchMovie[index]['title'],
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.play_circle_fill_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

List searchMovie = [
  {"title": "Dhokha", "image": "assets/images/dhokha.png"},
  {"title": "Code Name Tiranga", "image": "assets/images/codename.png"},
  {"title": "RRR", "image": "assets/images/rrr.png"},
  {"title": "Bahubali 2", "image": "assets/images/bahubali.png"},
  {"title": "Thar", "image": "assets/images/thar.png"},
  {"title": "Drive", "image": "assets/images/drive.png"},
  {"title": "Double XL", "image": "assets/images/doublexl.png"},
];
