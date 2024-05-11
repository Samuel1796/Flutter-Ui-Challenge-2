import 'package:flutter/material.dart';
import 'package:tuts/models/movie.dart';

class MovieSlides extends StatefulWidget {
  const MovieSlides({super.key});

  @override
  State<MovieSlides> createState() => _MovieSlidesState();
}

class _MovieSlidesState extends State<MovieSlides> {
  final List<Movie> movies = Cart().getMovieList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            movies.length,
            (index) => MovieCard(movie: movies[index]),
          ),
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.asset(
              movie.imagePath,
              width: 120,
              height: 140,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {
                    // Implement play functionality
                  },
                  icon: const Icon(
                    Icons.play_circle_fill,
                    color: Colors.yellow,
                    size: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
