import 'package:covid_app/screens/HomeScreen.dart';
import 'package:covid_app/utilities/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'images/logo.png',
              fit: BoxFit.cover,
            ),
            Text(
              'Covid-19 App',
              style: maintitle,
            ),
            SpinKitThreeBounce(
              color: Colors.cyan,
              size: 50.0,
            )
          ],
        ));
  }
}
