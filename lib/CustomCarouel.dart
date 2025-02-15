import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:helpbeacon/utils/qoutes.dart'; 
import 'package:helpbeacon/widgets/home_widgets/safewebview.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({super.key});

  void navigateToRoute(BuildContext context, String url) {
    Navigator.push(
      context,
      CupertinoPageRoute(builder: (context) => WebViewContainer(url: url)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: ImageSlider.length,
      itemBuilder: (context, index, realIndex) => Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onTap: () => navigateToRoute(context, "https://chromewebstore.google.com/"),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(ImageSlider[index]),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                ]),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, left: 8),
                  child: Text(
                    articleTitle[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      options: CarouselOptions(
        aspectRatio: 2.0,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}
