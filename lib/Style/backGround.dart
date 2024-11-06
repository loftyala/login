
import 'package:flutter/material.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF3A5BB8),
       /* gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter, // Optional but recommended
         *//* colors: [
            Colors.blueAccent.shade200,
            Colors.blueAccent.shade100,
            Colors.blueAccent.shade400,
          ],*//*
        ),*/
      ),
    );
  }
}
