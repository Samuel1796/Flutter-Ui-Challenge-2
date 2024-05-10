import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

final List<String> imagepath = [
  "lib/assets/hod.jpg",
  "lib/assets/gt.jpg",
  "lib/assets/movie3.jpg",
  "lib/assets/movie5.jpg",
  "lib/assets/movie6.jpg"
];

late List<Widget> _pages;
int activepage = 0;

final PageController _pageController = PageController(initialPage: 0);

class _ImageSliderState extends State<ImageSlider> {
  @override
  void initState() {
    super.initState();
    _pages = List.generate(imagepath.length,
        (index) => ImagePlaceHolder(imagepath: imagepath[index]));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: PageView.builder(
                controller: _pageController,
                itemCount: imagepath.length,
                itemBuilder: (context, index) {
                  return _pages[index];
                },
                onPageChanged: (value) {
                  setState(() {
                    activepage = value;
                  });
                },
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                  _pages.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: GestureDetector(
                          onTap: () {
                            _pageController.animateToPage(index,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: CircleAvatar(
                            radius: activepage == index ? 6 : 4,
                            backgroundColor: activepage == index
                                ? Colors.yellow
                                : Colors.grey,
                          ),
                        ),
                      )),
            ),
          ),
        )
      ],
    );
  }
}

class ImagePlaceHolder extends StatelessWidget {
  final String? imagepath;

  const ImagePlaceHolder({super.key, this.imagepath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        imagepath!,
        fit: BoxFit.cover, // Ensure the image covers the entire area
      ),
    );
  }
}
