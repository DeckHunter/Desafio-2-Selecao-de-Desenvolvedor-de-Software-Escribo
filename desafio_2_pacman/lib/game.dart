import 'package:bonfire/bonfire.dart';
import 'package:desafio_2_pacman/enemy/demon.dart';
import 'package:desafio_2_pacman/util/controller.dart';
import 'package:desafio_2_pacman/decoration/bonfire.dart';
import 'package:desafio_2_pacman/decoration/item.dart';
import 'package:desafio_2_pacman/interface/hud.dart';
import 'package:desafio_2_pacman/main.dart';
import 'package:desafio_2_pacman/player/Player.dart';
import 'package:flutter/material.dart';

class MyGame extends StatefulWidget {
  final int stage;
  const MyGame({Key? key, this.stage = 1}) : super(key: key);
  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  List<GameComponent> demons = [];
  @override
  void initState() {
    switch (widget.stage) {
      case 1:
        demons.add(Demon(getPositionMap(18, 3)));
        demons.add(Demon(getPositionMap(21, 3)));
        break;
      case 2:
        demons.add(Demon(getPositionMap(18, 3)));
        demons.add(Demon(getPositionMap(21, 3)));
        demons.add(Demon(getPositionMap(18, 3)));
        break;
      case 3:
        demons.add(Demon(getPositionMap(18, 3)));
        demons.add(Demon(getPositionMap(21, 3)));
        demons.add(Demon(getPositionMap(18, 3)));
        demons.add(Demon(getPositionMap(18, 3)));
        break;
      case 4:
        demons.add(Demon(getPositionMap(18, 3)));
        demons.add(Demon(getPositionMap(21, 3)));
        demons.add(Demon(getPositionMap(18, 3)));
        demons.add(Demon(getPositionMap(21, 3)));
        demons.add(Demon(getPositionMap(18, 3)));
        break;
      case 5:
        demons.add(Demon(getPositionMap(18, 3)));
        demons.add(Demon(getPositionMap(21, 3)));
        demons.add(Demon(getPositionMap(18, 3)));
        demons.add(Demon(getPositionMap(18, 3)));
        demons.add(Demon(getPositionMap(21, 3)));
        demons.add(Demon(getPositionMap(18, 3)));
        break;
      default:
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      map: WorldMapByTiled('map/map.json', objectsBuilder: {
        'item_lv1': (properties) => ItemLv1(properties.position),
        'item_lv2': (properties) => ItemLv2(properties.position),
        'light': (properties) => Bonfire(properties.position),
      }),
      player: PlayerHero(Vector2(16 * tilesize, 20 * tilesize)),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
      ),
      lightingColorGame: Colors.black.withOpacity(0.3),
      overlayBuilderMap: {
        HudGame.overlayKey: (context, game) => HudGame(game: game),
      },
      initialActiveOverlays: const [
        HudGame.overlayKey,
      ],
      components: [
        Controller(widget.stage),
        ...demons,
      ],
    );
  }

  Vector2 getPositionMap(int x, int y) {
    return Vector2(x * tilesize, y * tilesize);
  }
}
