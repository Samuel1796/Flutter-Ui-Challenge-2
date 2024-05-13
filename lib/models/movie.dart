import 'package:flutter/material.dart';

class Movie {
  final String imagePath;
  final String year;
  final String title;
  final String genre;
  final String body;
  final String reviews;
  final String duration;

  Movie({
    required this.imagePath,
    required this.year,
    required this.title,
    required this.genre,
    required this.body,
    required this.reviews,
    required this.duration,
  });
}

class Cart extends ChangeNotifier {
  List<Movie> movieList = [
    Movie(
      imagePath: "lib/assets/gt.jpg",
      year: "2023", // Release date yet to be confirmed
      title: "Gran Turismo",
      genre: "Racing/Sports", // Based on the video game genre
      body:
          "A cinematic experience based on the popular racing simulation video game franchise.",
      reviews: "900k",
      duration: "2h 23m",
    ),
    Movie(
      imagePath: "lib/assets/movie3.jpg",
      year: "2019",
      title: "Avengers: Endgame", // Full title
      genre: "Sci-Fi/Action/Adventure ", // Multiple genres
      body:
          "The culmination of 22 films, the Avengers face Thanos in a final showdown.",
      reviews: "4.5k",
      duration: "1h 23m",
    ),
    Movie(
      imagePath: "lib/assets/movie5.jpg",
      year: "2017",
      title: "Jumanji: Welcome to the Jungle", // Full title
      genre: "Comedy/Action-adventure", // Multiple genres
      body: "A group of teenagers get sucked into a magical video game.",
      reviews: "400k",
      duration: "4h 23m",
    ),
    Movie(
      imagePath: "lib/assets/movie6.jpg",
      year: "2017",
      title: "Justice League",
      genre: "Action/Adventure/Fantasy", // Multiple genres
      body: "Superheroes unite to protect Earth from an alien invasion.",
      reviews: "57.6k",
      duration: "8h 23m",
    ),
    Movie(
      imagePath: "lib/assets/hod.jpg",
      year: "2022", // Ongoing series
      title: "House of the Dragon",
      genre: "Drama/Fantasy", // Multiple genres
      body: "A prequel to the popular series 'Game of Thrones'.",
      reviews: "78k",
      duration: "9h 43m",
    ),
  ];

  List<Movie> getMovieList() {
    return movieList;
  }
}
