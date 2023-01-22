import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Qoutes',
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'AmaticSC',
              color: Colors.brown[300],
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow[100],
        ),
        body: Quotes(),
      ),
    ),
  );
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/wp.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    '$number/30',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'AmaticSC',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      child: Image.asset('images/$number.jpg'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(
                            () {
                              if (number != 1) {
                                number = number - 1;
                              }
                            },
                          );
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(
                            () {
                              number = Random().nextInt(30) + 1;
                            },
                          );
                        },
                        child: Container(
                          //color: Colors.yellow[300],
                          child: Text(
                            'Change Quote',
                            style: TextStyle(
                              fontSize: 60,
                              fontFamily: 'AmaticSC',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          //width: 10,
                          ),
                      TextButton(
                        onPressed: () {
                          setState(
                            () {
                              if (number != 30) {
                                number = number + 1;
                              }
                            },
                          );
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
