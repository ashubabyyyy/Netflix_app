import 'package:flutter/material.dart';
import '../model/search_model.dart';

class SearchProvider extends ChangeNotifier {
  final List<SearchModel> _allMovies = [
    SearchModel(title: 'Dhokha', image: "assets/images/dhokha.png"),
    SearchModel(title: 'Code Name Tiranga', image: "assets/images/codename.png"),
    SearchModel(title: 'RRR', image: "assets/images/rrr.png"),
    SearchModel(title: 'Bahubali 2', image: "assets/images/bahubali.png"),
    SearchModel(title: 'Thar', image: "assets/images/thar.png"),
    SearchModel(title: 'Drive', image: "assets/images/drive.png"),
    SearchModel(title: 'Double XL', image: "assets/images/doublexl.png"),
  ];

  List<SearchModel> _filteredMovies = [];

  List<SearchModel> get filteredMovies =>
      _filteredMovies.isEmpty ? _allMovies : _filteredMovies;

  void searchMovie(String query) {
    if (query.isEmpty) {
      _filteredMovies = [];
    } else {
      _filteredMovies = _allMovies
          .where((movie) =>
              movie.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}