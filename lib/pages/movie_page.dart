import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                  child: Image.asset(
                    "lib/assets/movie3.jpg",
                    height: MediaQuery.of(context).size.height *
                        0.5, // Set a fixed height for the image
                    width: double.infinity,
                    fit: BoxFit.cover,
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
          Positioned(
            bottom: 0, // Adjust the position from the bottom
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Avengers",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: const Text(
                          "CBFC: U/A",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Text(" 2012"),
                      const Text(" Action/Sci Fi"),
                      const Text(" 2hr 23m")
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star_half, color: Colors.yellow),
                      Text(" 4.5k Reviews"),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    "Marvel's The Avengers is a 2012 American superhero film based on the Marvel Comics superhero team of the same name.  The film was written and directed by Joss Whedon.",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
