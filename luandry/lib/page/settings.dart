import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:luandry/page/home.dart';
import 'package:luandry/page/places.dart';

class settings extends StatefulWidget {
  const settings({super.key});
  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  int currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
    if (index == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => homepage()));
    }
    if (index == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => places()));
    }
    if (index == 2) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => settings()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SettingsGroup(
          title: 'Group title',
          children: <Widget>[
            CheckboxSettingsTile(
              settingKey: 'key-day-light-savings',
              title: 'Daylight Time Saving',
              enabledLabel: 'Enabled',
              disabledLabel: 'Disabled',
              leading: Icon(Icons.timelapse),
            ),
            SwitchSettingsTile(
              settingKey: 'key-dark-mode',
              title: 'Dark Mode',
              enabledLabel: 'Enabled',
              disabledLabel: 'Disabled',
              leading: Icon(Icons.palette),
            ),
          ],
        ),
      ),
    );
  }
}
