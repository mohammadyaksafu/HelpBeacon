import 'package:flutter/material.dart';
import 'package:helpbeacon/CustomCarouel.dart';
import 'package:helpbeacon/widgets/custom_appbar.dart';
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
      qIdx = random.nextInt(6);
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
                onTap: getRandomQuote,
              ),
              CoustomCarouel(),
            ],
          ),
        ),
      ),
    );
  }
}
