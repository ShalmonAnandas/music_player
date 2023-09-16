import 'package:flutter/material.dart';
import 'package:music_player/utils/dataconstants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Dark Mode"),
          trailing: Switch(
            value: DataConstants.isDarkMode,
            onChanged: (bool value) {
              setState(() {
                DataConstants.isDarkMode = value;
              });
            },
          ),
        )
      ],
    );
  }
}
