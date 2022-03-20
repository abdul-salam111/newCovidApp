import 'package:covid_app/screens/countries.dart';
import 'package:covid_app/screens/worlddata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class Toggletab extends StatefulWidget {
  @override
  State<Toggletab> createState() => _ToggletabState();
}

class _ToggletabState extends State<Toggletab> {
  var _tabTextIndexSelected = 0;
  var _tabTextIconIndexSelected = 0;
  var _tabIconIndexSelected = 0;
  var _tabSelectedIndexSelected = 0;

  var _listTextTabToggle = ["World Data", "Countries Data"];
  final List countries = [worldata(), Countries()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color(0xff2c2779),
                      Color.fromARGB(255, 85, 106, 224)
                    ])),
                child: Image.asset('images/logo.png'),
              ),
              Positioned(
                  top: 120,
                  left: 20,
                  child: Text(
                    'All We Need Is To\nStay Safe At Home',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        FlutterToggleTab(
          // width in percent
          width: 80,
          borderRadius: 30,
          height: 50,
          selectedIndex: _tabTextIndexSelected,
          selectedBackgroundColors: [Colors.blue, Colors.blueAccent],
          selectedTextStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          unSelectedTextStyle: TextStyle(
              color: Colors.black87, fontSize: 14, fontWeight: FontWeight.w500),
          labels: _listTextTabToggle,
          selectedLabelIndex: (index) {
            setState(() {
              _tabTextIndexSelected = index;
            });
          },
          isScroll: true,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _tabTextIndexSelected = 1;
            });
          },
          child: Center(),
        ),
        Expanded(child: countries[_tabTextIndexSelected])
      ],
    )));
  }
}
