import 'package:flutter/material.dart';

class Movie {
  final String imagePath;
  final String year;
  final String title;
  final String genre;
  final String body;

  Movie({
    required this.imagePath,
    required this.year,
    required this.title,
    required this.genre,
    required this.body,
  });
}

class Cart extends ChangeNotifier {
  List<Movie> movieList = [
    Movie(
      imagePath: "lib/assets/gt.jpg",
      year: "2021",
      title: "The Great Adventure",
      genre: "Action",
      body: "adfsfmnskmnfsfafafafa",
    ),
    Movie(
      imagePath: "lib/assets/movie3.jpg",
      year: "2020",
      title: "Love in Paris",
      genre: "Romance",
      body: "adfsfmnskmnfsfafafafa",
    ),
    Movie(
      imagePath: "lib/assets/movie5.jpg",
      year: "2019",
      title: "Mystery Island",
      genre: "Mystery",
      body: "adfsfmnskmnfsfafafafa",
    ),
    Movie(
      imagePath: "lib/assets/movie6.jpg",
      year: "2018",
      title: "The Hidden Truth",
      genre: "Thriller",
      body: "adfsfmnskmnfsfafafafa",
    ),
    Movie(
      imagePath: "lib/assets/hod.jpg",
      year: "2017",
      title: "Family Ties",
      genre: "Drama",
      body: "adfsfmnskmnfsfafafafa",
    ),
  ];

  List<Movie> getMovieList() {
    return movieList;
  }
}
