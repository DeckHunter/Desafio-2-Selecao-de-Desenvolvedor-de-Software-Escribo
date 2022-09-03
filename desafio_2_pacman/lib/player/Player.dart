import 'package:bonfire/bonfire.dart';
import 'package:desafio_2_pacman/main.dart';
import 'package:desafio_2_pacman/spriteSheet/game_sprite_sheet_player.dart';
import 'package:flutter/material.dart';

class PlayerHero extends SimplePlayer with ObjectCollision, Lighting {
  // ignore: non_constant_identifier_names
  PlayerHero(Vector2 player_Position)
      : super(
          position: player_Position,
          animation: SimpleDirectionAnimation(
              idleLeft: GameSpriteSheetPlayer.heroIdleLeft,
              idleRight: GameSpriteSheetPlayer.heroIdleRight,
              runRight: GameSpriteSheetPlayer.heroRunRight,
              runLeft: GameSpriteSheetPlayer.heroRunLeft),
          speed: 100,
          size: Vector2(tilesize * 2, tilesize * 2),
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(size: Vector2(15, 20), align: Vector2(9, 11)),
    ]));
    setupLighting(
        LightingConfig(radius: tilesize * 2, color: Colors.transparent));
  }
  @override
  void update(double dt) {
    if (timePower > 0) {
      timePower--;
    } else {
      bigPlayer = false;
    }
    super.update(dt);
  }
}
