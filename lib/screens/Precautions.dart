import 'package:covid_app/model/precuations.dart';
import 'package:covid_app/utilities/constant.dart';
import 'package:flutter/material.dart';

class Precautions extends StatelessWidget {
  int lineno = 2;
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
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Precuations',
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
                        'Do you follow these Precuations?',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'In some cases, it can lead to severe\nrespiratory problems, kidney failure or death.',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'THE BEST WAYS TO PROTECT YOURSELF',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ]),
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: List.generate(Precautionslist.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                          child: CircleAvatar(
                        backgroundImage:
                            AssetImage(Precautionslist[index].image),
                        radius: 40,
                      )),
                      Text(Precautionslist[index].precaution,
                          style: symptomsstyle),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        Precautionslist[index].deatails,
                        style: TextStyle(),
                        textAlign: TextAlign.center,
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
