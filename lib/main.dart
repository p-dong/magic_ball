import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              'Magic Ball',
              style: TextStyle(
                fontFamily: 'Cursive',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          body: MagicPage(),
        ),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  List Statement = [
    'Absolutely, aligned with the universe.',
    'Unfortunately, cosmic winds resist.',
    'Definitely, a firm and clear yes.',
    'Regrettably, stars advise caution.',
    'Sure thing, in agreement with the cosmos.',
    'Alas, the magic eight ball frowns.',
    'Indeed, a confident and positive response.',
    'Sorry, cosmic energy leans towards no.',
    'Of course, a resounding affirmation.',
    'No, universe signals a detour.',
    'Absolutely, with cosmic approval.',
    'Negatively, celestial vibes dissent.',
    'Definitely, receiving a positive nod.',
    'Apologies, the magic eight ball denies.',
    'Yes, in sync with celestial vibes.',
    'No, cosmic orchestra plays a somber note.',
    'Absolutely, all signs point to yes.',
    'Unfortunately, cosmic alignment shifts.',
    'Certainly, a cosmic green light.',
    'Regrettably, cosmic dice hint at no.',
  ];
  int num = 0;

  @override
  Widget build(BuildContext context) {
    void changeNumber() {
      setState(() {
        num = Random().nextInt(20);
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: changeNumber,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image(
                    image: AssetImage('images/magicball.png'),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 0.0, 35.0, 0.0),
                    child: Text(
                      '${Statement[num]}', // use curly braces {} for expression interpolation inside the string.
                      style: TextStyle(
                          fontFamily: 'Cursive',
                          fontSize: 30.0,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
