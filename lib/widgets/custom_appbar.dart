import 'package:flutter/material.dart';
import 'package:helpbeacon/utils/qoutes.dart';

class CustomAppBar extends StatelessWidget {
  //const CustomAppBar({super.key});

  Function? onTap;
  int? quoteIndex;
  CustomAppBar({this.onTap, this.quoteIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        child: Text(
          sweetSayings[quoteIndex!],
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
