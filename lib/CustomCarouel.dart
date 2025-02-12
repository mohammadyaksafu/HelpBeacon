import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:helpbeacon/utils/qoutes.dart';

class CoustomCarouel extends StatelessWidget {
  const CoustomCarouel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
          items: List.generate(ImageSlider.length,

              //Image Card Linker and  Decoretion //
              
              (index) => Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(ImageSlider[index]),
                        ),
                      ),

                      //box design //

                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.transparent
                          ]),
                        ),


                        // for decoration Text on the image //


                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8, left: 8),
                            child: Text(
                              articleTitle[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
          options: CarouselOptions(
            aspectRatio: 2.0,
            autoPlay: true,
            enlargeCenterPage: true,
          )),
    );
  }
}
