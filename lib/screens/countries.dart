import 'package:covid_app/model/Countrywise.dart';
import 'package:covid_app/screens/countriesinfo.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Countries extends StatefulWidget {
  const Countries({Key? key}) : super(key: key);

  @override
  State<Countries> createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  List<CountriesList> countrieslist = [];
  Future<CountriesList> _getcountriesrecord() async {
    var response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries'));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      if (this.mounted) {
        setState(() {
          for (Map i in data) {
            countrieslist.add(CountriesList.fromJson(i));
          }
        });
      }
      return CountriesList.fromJson(data[0]);
    } else {
      return CountriesList.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FutureBuilder(
              future: _getcountriesrecord(),
              builder: (context, snapshoot) {
                return snapshoot.data != null
                    ? Expanded(
                        child: ListView.builder(
                            itemCount: countrieslist.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 8),
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListTile(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) {
                                            return CountriesInfo(
                                              infectedpeople:
                                                  countrieslist[index].cases,
                                              totaldeaths:
                                                  countrieslist[index].deaths,
                                              recovered: countrieslist[index]
                                                  .recovered,
                                              critical:
                                                  countrieslist[index].critical,
                                              flag: countrieslist[index]
                                                  .countryInfo!
                                                  .flag,
                                              countryname:
                                                  countrieslist[index].country,
                                            );
                                          }));
                                        },
                                        leading: Image.network(
                                          countrieslist[index]
                                              .countryInfo!
                                              .flag
                                              .toString(),
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                        title: Text(countrieslist[index]
                                            .country
                                            .toString())),
                                  ),
                                ),
                              );
                            }),
                      )
                    : SpinKitCircle(
                        color: Colors.blue,
                        size: 80,
                      );
              }),
        ],
      )),
    );
  }
}
