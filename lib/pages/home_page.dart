import 'package:flutter/material.dart';
import 'package:tuts/utils/bottom_navbar.dart';
import 'package:tuts/utils/image_slider.dart';
import 'package:tuts/utils/movie_slides.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> filters = const ["New", "Trending", "Funny", "Drama"];
  final List<String> locations = const [
    "Special Theater",
    "Group Buy",
    "Family Package",
    "Personal"
  ];
  final List<IconData> icons = const [
    Icons.theaters,
    Icons.group,
    Icons.family_restroom,
    Icons.person
  ];

  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) {},
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Video",
              style: TextStyle(
                color: Colors.red[700],
                fontWeight: FontWeight.w900,
                fontSize: 35,
              ),
            ),
            Text(
              "Play",
              style: TextStyle(
                color: Colors.yellow[700],
                fontWeight: FontWeight.w900,
                fontSize: 35,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(245, 247, 249, 1),
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red, width: 1.5),
              ),
              child: const CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(245, 247, 249, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SingleChildScrollView(
                  child: SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filters.length,
                      itemBuilder: (context, index) {
                        final filter = filters[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFilter = filter;
                              });
                            },
                            child: Chip(
                              backgroundColor: selectedFilter == filter
                                  ? Colors.red[700]
                                  : Colors.white,
                              side: const BorderSide(color: Colors.white),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              label: Text(
                                filter,
                                style: TextStyle(
                                  color: selectedFilter == filter
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
                        child: TextField(
                          style: const TextStyle(
                              color: Colors.black), // Change text color
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white, // Fill color
                            prefixIcon: const Icon(
                              Icons.search,
                            ),
                            suffixIcon: const Icon(Icons.sort),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 20), // Adjust content padding
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide.none, // No border when not focused
                              borderRadius: BorderRadius.circular(30),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide.none, // No border when not focused
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey, // Change hint color
                            ),
                            hintText: "Search...",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 230, // Adjust height as needed
                  child: ImageSlider(),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(locations.length, (index) {
                      final location = locations[index];
                      final icon = icons[index];
                      final color = _getColorForIndex(index);
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 4),
                        child: Chip(
                          backgroundColor: color,
                          side: const BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          label: Row(
                            children: [
                              Icon(
                                icon,
                                color: Colors.white,
                                size: 24,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                location,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),

                const SizedBox(
                  height: 4,
                ),

                //Popular tag

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Popular ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Text("More",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red[300])),
                    ],
                  ),
                ),

                const MovieSlides(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getColorForIndex(int index) {
    switch (index) {
      case 0:
        return Colors.purple; // Special Theater
      case 1:
        return Colors.grey; // Group Buy
      case 2:
        return Colors.yellow; // Family Package
      case 3:
        return Colors.teal; // Personal
      default:
        return Colors.grey;
    }
  }
}
