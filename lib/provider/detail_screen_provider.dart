import 'package:flutter/material.dart';
import 'package:netflix_app/model/detail_screen_model.dart';


class DetailScreenProvider extends ChangeNotifier {
  MovieModel? _selectedMovie;

  MovieModel? get selectedMovie => _selectedMovie;

  void selectMovie(MovieModel movie) {
    _selectedMovie = movie;
    notifyListeners();
  }
}