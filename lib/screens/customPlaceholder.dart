import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomPlaceholder extends StatelessWidget {
  const CustomPlaceholder({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Lottie.asset("assets/underConstruction.json",
              width: MediaQuery.of(context).size.width * 0.7)),
    );
  }
}
