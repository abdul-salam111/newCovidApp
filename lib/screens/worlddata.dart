import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:covid_app/model/worldrecordmodel.dart';
import 'package:covid_app/utilities/constant.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class worldata extends StatefulWidget {
  const worldata({Key? key}) : super(key: key);
  @override
  State<worldata> createState() => _worldataState();
}

class _worldataState extends State<worldata> {
  void initState() {
    super.initState();
    _getWorldRecords();
  }

  Future<WorldRecord> _getWorldRecords() async {
    var response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return WorldRecord.fromJson(data);
    } else {
      return WorldRecord.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<WorldRecord>(
            future: _getWorldRecords(),
            builder: (context, snapshot) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      snapshot.data == null
                          ? SpinKitCircle(
                              color: Color.fromARGB(255, 37, 17, 214),
                              size: 30.0,
                            )
                          : CovidCards(
                              width: MediaQuery.of(context).size.width / 2.1,
                              height: MediaQuery.of(context).size.height / 6.5,
                              data: snapshot.data!.cases,
                              cardname: 'Total Infected',
                              color: Color.fromARGB(255, 172, 159, 46),
                              style: totalinfectedno,
                            ),
                      snapshot.data == null
                          ? SpinKitCircle(
                              color: Color.fromARGB(255, 37, 17, 214),
                              size: 30.0,
                            )
                          : CovidCards(
                              width: MediaQuery.of(context).size.width / 2.1,
                              height: MediaQuery.of(context).size.height / 6.5,
                              data: snapshot.data!.deaths,
                              cardname: 'Deaths',
                              color: Colors.red,
                              style: totalinfectedno,
                            ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      snapshot.data == null
                          ? SpinKitCircle(
                              color: Color.fromARGB(255, 37, 17, 214),
                              size: 30.0,
                            )
                          : CovidCards(
                              width: MediaQuery.of(context).size.width / 3.1,
                              height: MediaQuery.of(context).size.height / 7.2,
                              data: snapshot.data!.recovered,
                              cardname: 'Recovered',
                              color: Colors.green,
                              style: smallcards,
                            ),
                      snapshot.data == null
                          ? SpinKitCircle(
                              color: Color.fromARGB(255, 37, 17, 214),
                              size: 30.0,
                            )
                          : CovidCards(
                              width: MediaQuery.of(context).size.width / 3.1,
                              height: MediaQuery.of(context).size.height / 7.2,
                              data: snapshot.data!.active,
                              cardname: 'Active',
                              color: Colors.blue,
                              style: smallcards,
                            ),
                      snapshot.data == null
                          ? SpinKitCircle(
                              color: Color.fromARGB(255, 37, 17, 214),
                              size: 30.0,
                            )
                          : CovidCards(
                              width: MediaQuery.of(context).size.width / 3.1,
                              height: MediaQuery.of(context).size.height / 7.2,
                              data: snapshot.data!.critical,
                              cardname: 'Serious',
                              color: Colors.orange,
                              style: smallcards,
                            ),
                    ],
                  ),
                ],
              );
            }),
      ],
    );
  }
}

class CovidCards extends StatefulWidget {
  var data;
  var cardname;
  Color? color;
  var width;
  var height;
  TextStyle? style;
  CovidCards(
      {this.data,
      this.cardname,
      this.color,
      this.width,
      this.height,
      this.style});
  @override
  State<CovidCards> createState() => _CovidCardsState();
}

class _CovidCardsState extends State<CovidCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 26,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.data.toString(),
              style: widget.style,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.cardname,
              style: totalinfectex,
            ),
          ],
        ),
      ),
    );
  }
}
