import 'package:desafio_2_pacman/game.dart';
import 'package:desafio_2_pacman/pages/home_page_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const double tilesize = 16;
int countPoints = 0;
int countBaus = 0;
int score = 0;
bool bigPlayer = false;
int timePower = 0;
bool playerIsDead = false;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHome(),
    );
  }
}
