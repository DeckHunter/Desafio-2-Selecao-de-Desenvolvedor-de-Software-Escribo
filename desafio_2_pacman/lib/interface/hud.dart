import 'package:bonfire/base/bonfire_game.dart';
import 'package:desafio_2_pacman/main.dart';
import 'package:desafio_2_pacman/util/controller.dart';
import 'dart:async' as async;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HudGame extends StatefulWidget {
  static const overlayKey = 'GameInterface';
  final BonfireGame game;
  const HudGame({Key? key, required this.game}) : super(key: key);
  @override
  State<HudGame> createState() => _HudGameState();
}

class _HudGameState extends State<HudGame> {
  late async.Timer _pointTime;

  @override
  void initState() {
    _pointTime =
        async.Timer.periodic(const Duration(milliseconds: 100), _verifyPoints);
    super.initState();
  }

  @override
  void dispose() {
    _pointTime.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double textSize = 13;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Score : $score',
                textAlign: TextAlign.left,
                style: GoogleFonts.pressStart2p(
                  textStyle: TextStyle(
                      inherit: false, color: Colors.white, fontSize: textSize),
                ),
              ),
              Text(
                'Pontos : $countPoints',
                textAlign: TextAlign.left,
                style: GoogleFonts.pressStart2p(
                  textStyle: TextStyle(
                    inherit: false,
                    color: Colors.white,
                    fontSize: textSize,
                  ),
                ),
              ),
              Text(
                'Baus : $countBaus',
                textAlign: TextAlign.left,
                style: GoogleFonts.pressStart2p(
                  textStyle: TextStyle(
                      inherit: false, color: Colors.white, fontSize: textSize),
                ),
              ),
            ]),
      ],
    );
  }

  void _verifyPoints(async.Timer timer) {
    setState(() {
      countBaus;
      countPoints;
      score;
    });
  }
}
