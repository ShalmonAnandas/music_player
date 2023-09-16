import 'package:flutter/material.dart';
import 'package:music_player/screens/homePage.dart';
import 'package:music_player/utils/color_schemes.g.dart';
import 'package:music_player/utils/dataconstants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          brightness: Brightness.light),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}
