import 'package:bonfire/bonfire.dart';
import 'package:desafio_2_pacman/main.dart';
import 'package:desafio_2_pacman/player/Player.dart';
import 'package:desafio_2_pacman/spriteSheet/decoration_sprite_sheet_item.dart';

class ItemLv1 extends GameDecoration with ObjectCollision {
  ItemLv1(Vector2 itemPosition)
      : super.withSprite(
          sprite: DecorationSpriteSheet.itemLv2,
          position: itemPosition,
          size: Vector2(16, 32),
        ) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(size: Vector2(12, 12), align: Vector2(2, 18)),
      ]),
    );
  }
  @override
  void update(double dt) {
    // ignore: unnecessary_this
    this.seeComponentType<PlayerHero>(
        observed: (player) {
          countPoints += 1;
          score += 2;
          removeFromParent();
        },
        radiusVision: tilesize);
    super.update(dt);
  }
}

class ItemLv2 extends GameDecoration with ObjectCollision {
  ItemLv2(Vector2 itemPosition)
      : super.withSprite(
          sprite: DecorationSpriteSheet.itemLv1,
          position: itemPosition,
          size: Vector2(16, 32),
        ) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(size: Vector2(12, 12), align: Vector2(2, 18)),
      ]),
    );
  }
  @override
  void update(double dt) {
    // ignore: unnecessary_this
    this.seeComponentType<PlayerHero>(
        observed: (player) {
          countBaus += 1;
          bigPlayer = true;
          timePower += 150;
          score += 5;
          removeFromParent();
        },
        radiusVision: tilesize);

    super.update(dt);
  }
}
