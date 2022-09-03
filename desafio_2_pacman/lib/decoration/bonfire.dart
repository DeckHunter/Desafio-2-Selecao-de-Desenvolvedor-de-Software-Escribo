import 'package:bonfire/bonfire.dart';
import 'package:desafio_2_pacman/main.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Bonfire extends GameDecoration with Lighting {
  Bonfire(Vector2 bonfirePosition)
      : super(position: bonfirePosition, size: Vector2(tilesize, tilesize)) {
    setupLighting(
      LightingConfig(
        pulseSpeed: 0.2,
        pulseVariation: 0.5,
        withPulse: true,
        radius: tilesize * 2,
        color: Colors.orange.withOpacity(0.2),
      ),
    );
  }
}
