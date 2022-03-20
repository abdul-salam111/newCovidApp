import 'package:covid_app/screens/Precautions.dart';
import 'package:covid_app/screens/symptoms.dart';
import 'package:covid_app/screens/toggletab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List _children = [
    Toggletab(),
    Symptoms(),
    Precautions(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              iconSize: 30,
              selectedLabelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              selectedItemColor: Colors.blue[900],
              selectedIconTheme: IconThemeData(size: 35),
              onTap: onTabTapped,
              currentIndex:
                  _currentIndex, // this will be set when a new tab is tapped
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(
                    FontAwesomeIcons.globe,
                    color: Colors.blue,
                  ),
                  label: 'Data',
                ),
                BottomNavigationBarItem(
                  icon: new Icon(
                    FontAwesomeIcons.disease,
                    color: Colors.red,
                  ),
                  label: 'Symptoms',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.warning,
                      color: Colors.orange,
                    ),
                    label: 'Precautions')
              ],
            ),
            body: Column(
              children: [Expanded(child: _children[_currentIndex])],
            )));
  }
}
