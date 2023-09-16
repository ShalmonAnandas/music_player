import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/screens/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    Center(child: Text("0")),
    Center(child: Text("1")),
    Center(child: Text("2")),
    SettingsPage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Music Player",
          style: GoogleFonts.quicksand(fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: tabItems[_selectedIndex],
      ),
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        iconSize: 30,
        showElevation: false, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          FlashyTabBarItem(
            icon: Icon(
              Icons.album,
            ),
            title: Text('Albums'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.music_note),
            title: Text('Artists'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
