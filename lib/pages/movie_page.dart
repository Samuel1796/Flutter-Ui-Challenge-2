import 'package:flutter/material.dart';
import 'package:tuts/models/movie.dart';

class MoviePage extends StatelessWidget {
  final Movie movie;

  const MoviePage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 247, 249, 1),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                  child: Image.asset(
                    movie.imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                ),
                Positioned(
                  bottom: 260,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  movie.title,
                                  style: const TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Chip(
                                side: const BorderSide(color: Colors.yellow),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                label: const Text(
                                  "CBFC: U/A",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Text(" ${movie.year}"),
                              Expanded(
                                child: Text(
                                  ". ${movie.genre}",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(movie.duration)
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.yellow),
                              const Icon(Icons.star, color: Colors.yellow),
                              const Icon(Icons.star, color: Colors.yellow),
                              const Icon(Icons.star, color: Colors.yellow),
                              const Icon(Icons.star_half, color: Colors.yellow),
                              Text(" ${movie.reviews} Reviews"),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            movie.body,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ),
                ),
                // Actors Container
                Positioned(
                  bottom: 100,
                  left: 20,
                  child: Container(
                    width: 350,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Actors",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("lib/assets/human1.jpg"),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("lib/assets/human2.jpg"),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("lib/assets/human3.jpg"),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("lib/assets/human4.jpg"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Button Container
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Watch Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 40.0,
                  left: 20.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        // Navigate to the previous page
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
