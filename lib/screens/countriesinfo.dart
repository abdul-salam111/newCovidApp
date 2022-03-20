import 'package:flutter/material.dart';

class CountriesInfo extends StatelessWidget {
  var infectedpeople, totaldeaths, recovered, critical, flag, countryname;

  CountriesInfo(
      {this.infectedpeople,
      this.totaldeaths,
      this.recovered,
      this.critical,
      this.flag,
      this.countryname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: CircleAvatar(
            backgroundImage: NetworkImage(flag),
            radius: 80,
          )),
          SizedBox(
            height: 20,
          ),
          Text(
            countryname,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "Infected People :" + infectedpeople.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "Total Deaths :" + totaldeaths.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "Recovered :" + recovered.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "Critical :" + critical.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
