import 'package:covid_app/model/symptomslist.dart';
import 'package:covid_app/utilities/constant.dart';
import 'package:flutter/material.dart';

class Symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(40),
                      bottomEnd: Radius.circular(40)),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.topLeft,
                      colors: [
                        Color(0xff2c2779),
                        Color.fromARGB(255, 85, 106, 224)
                      ])),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Symptoms',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Container(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'images/corona.png',
                            )),
                      ],
                    ),
                    Text(
                      'Are you feeling sick?',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'If you feel sick with any of covid-19 symptoms.\nPlease call or sms us immediately for help.',
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              minimumSize: Size(170, 50),
                              primary: Colors.red,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.call),
                                SizedBox(
                                  width: 30,
                                ),
                                Text('Call Now'),
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              minimumSize: Size(170, 50),
                              primary: Color(0xff4f9aff),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.message),
                                SizedBox(
                                  width: 30,
                                ),
                                Text('Send SMS'),
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: List.generate(symptoms.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                          child: CircleAvatar(
                        backgroundImage: AssetImage(symptoms[index].image),
                        radius: 50,
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Text(symptoms[index].title, style: symptomsstyle),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    ));
  }
}
