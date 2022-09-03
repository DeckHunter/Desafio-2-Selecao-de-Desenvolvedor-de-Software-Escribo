import 'package:bonfire/base/game_component.dart';
import 'package:desafio_2_pacman/game.dart';
import 'package:desafio_2_pacman/main.dart';
import 'package:desafio_2_pacman/pages/home_page_game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Controller extends GameComponent {
  bool endGame = false;
  final int stage;
  Controller(this.stage);

  @override
  void update(double dt) {
    if (checkInterval('fim de jogo', 250, dt)) {
      // ignore: unrelated_type_equality_checks
      if (countBaus == 6 && countPoints == 17 && !endGame) {
        countBaus = 0;
        countPoints = 0;
        endGame = true;
        if (stage == 5) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(
                    'Parabéns você chegou ao fim do jogo!!!\n' 'Score : $score',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pressStart2p(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          inherit: false, color: Colors.black, fontSize: 13),
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        nextStage(stage + 1);
                      },
                      style: const ButtonStyle(alignment: Alignment.center),
                      child: Text('Ok!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.pressStart2p(
                            // ignore: prefer_const_constructors
                            textStyle: TextStyle(
                                inherit: false,
                                color: Colors.black,
                                fontSize: 13),
                          )),
                    ),
                  ],
                );
              });
        } else {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(
                    'Você venceu este nivel!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pressStart2p(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          inherit: false, color: Colors.black, fontSize: 13),
                    ),
                  ),
                  actions: [
                    TextButton(
                      style: const ButtonStyle(alignment: Alignment.center),
                      onPressed: () {
                        nextStage(stage + 1);
                      },
                      child: Text('Próximo!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.pressStart2p(
                            // ignore: prefer_const_constructors
                            textStyle: TextStyle(
                                inherit: false,
                                color: Colors.black,
                                fontSize: 13),
                          )),
                    ),
                    TextButton(
                      style: const ButtonStyle(alignment: Alignment.center),
                      onPressed: () {
                        Home();
                      },
                      child: Text('Menu',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.pressStart2p(
                            // ignore: prefer_const_constructors
                            textStyle: TextStyle(
                                inherit: false,
                                color: Colors.black,
                                fontSize: 13),
                          )),
                    ),
                  ],
                );
              });
        }
      }
      if (playerIsDead && !endGame) {
        endGame = true;
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(
                  'Você perdeu! Deseja Recomeçar ?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pressStart2p(
                    // ignore: prefer_const_constructors
                    textStyle: TextStyle(
                        inherit: false, color: Colors.black, fontSize: 13),
                  ),
                ),
                actions: [
                  TextButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {
                      playerIsDead = false;
                      score = 0;
                      countBaus = 0;
                      countPoints = 0;
                      nextStage(stage);
                    },
                    child: Text(
                      'Sim!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.pressStart2p(
                        // ignore: prefer_const_constructors
                        textStyle: TextStyle(
                            inherit: false, color: Colors.black, fontSize: 13),
                      ),
                    ),
                  ),
                  TextButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {
                      playerIsDead = false;
                      score = 0;
                      countBaus = 0;
                      countPoints = 0;
                      Home();
                    },
                    child: Text(
                      'Não!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.pressStart2p(
                        // ignore: prefer_const_constructors
                        textStyle: TextStyle(
                            inherit: false, color: Colors.black, fontSize: 13),
                      ),
                    ),
                  ),
                ],
              );
            });
      }
    }
    super.update(dt);
  }

  void nextStage(int lv) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return MyGame(
        stage: lv,
      );
    }), (route) => false);
  }

  void Home() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return const MyHome();
    }), (route) => false);
  }
}
