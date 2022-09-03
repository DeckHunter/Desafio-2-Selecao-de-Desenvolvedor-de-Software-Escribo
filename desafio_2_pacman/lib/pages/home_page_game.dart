import 'package:desafio_2_pacman/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) {
              return const MyGame();
            }), (route) => false);
          },
          child: Text(
            'Iniciar Jogo',
            textAlign: TextAlign.center,
            style: GoogleFonts.pressStart2p(
              // ignore: prefer_const_constructors
              textStyle: const TextStyle(
                  inherit: false, color: Colors.black, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
