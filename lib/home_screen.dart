import 'package:flutter/material.dart';
import 'package:helpbeacon/CustomCarouel.dart';
import 'package:helpbeacon/widgets/home_widgets/custom_appbar.dart';
import 'package:helpbeacon/widgets/home_widgets/emergency.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //const HomeScreen({super.key});
  int qIdx = 2;

  getRandomQuote() {
    Random random = Random();
    setState(() {
      qIdx = random.nextInt(10);
    });
  }

  @override
  void initState() {
    getRandomQuote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppBar(
                quoteIndex: qIdx,
                onTap: () {
                  getRandomQuote();
                }
              ),
              Expanded(
                child: ListView(
                shrinkWrap: true,
                children: [
                   CustomCarousel(),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Emergency ", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      
                     ),),
                   ),
                   Emergency(),
                ],
                )
              )
             
            ],
          ),
        ),
      ),
    );
  }
}
