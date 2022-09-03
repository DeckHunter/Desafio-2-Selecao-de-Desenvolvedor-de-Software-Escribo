import 'package:bonfire/bonfire.dart';
import 'package:desafio_2_pacman/main.dart';
import 'package:desafio_2_pacman/player/Player.dart';
import 'package:desafio_2_pacman/spriteSheet/game_sprite_sheet_demon.dart';
import 'package:flutter/animation.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class Demon extends SimpleEnemy
    with ObjectCollision, Lighting, AutomaticRandomMovement {
  // ignore: non_constant_identifier_names
  bool see_Player = false;
  Random random = Random();
  int randomNumber = 0;
  int i = 0;
  Demon(Vector2 deamonPosition)
      : super(
          position: deamonPosition,
          size: Vector2(32, 32),
          animation: SimpleDirectionAnimation(
              idleLeft: GameSpriteSheetDemon.demonIdleLeft,
              idleRight: GameSpriteSheetDemon.demonIdleRight,
              runRight: GameSpriteSheetDemon.demonRunRight,
              runLeft: GameSpriteSheetDemon.demonRunLeft),
          speed: 60,
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(size: Vector2(17, 22), align: Vector2(9, 10)),
    ]));
    setupLighting(
      LightingConfig(
          pulseSpeed: 0.2,
          pulseVariation: 0.5,
          withPulse: true,
          radius: tilesize * 2,
          color: const Color.fromARGB(87, 255, 153, 0)),
    );
  }
  @override
  void update(double dt) {
    if (bigPlayer) {
      height = 25;
      width = 25;
    } else {
      height = 32;
      width = 32;
    }
    if (see_Player && !bigPlayer) {
      seeAndMoveToPlayer(
        closePlayer: (player) {
          playerIsDead = true;
          player.removeFromParent();
        },
        radiusVision: tilesize * 50,
      );
    } else {
      runRandomMovement(dt,
          maxDistance: 1000, minDistance: 20, speed: speed, timeKeepStopped: 1);
    }
    seePlayer(
      observed: (player) {
        see_Player = true;
      },
      notObserved: () {
        see_Player = false;
      },
    );
    seeComponentType<PlayerHero>(
      observed: (player) {
        if (bigPlayer) {
          score += 10;
          removeFromParent();
        }
      },
    );
    super.update(dt);
  }
}
