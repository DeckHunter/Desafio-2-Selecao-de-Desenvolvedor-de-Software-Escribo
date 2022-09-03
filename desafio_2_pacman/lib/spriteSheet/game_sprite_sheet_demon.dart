import 'package:bonfire/bonfire.dart';

class GameSpriteSheetDemon {
  static Future<SpriteAnimation> get demonIdleLeft => SpriteAnimation.load(
        'demon_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(96, 0),
        ),
      );
  static Future<SpriteAnimation> get demonIdleRight => SpriteAnimation.load(
        'demon_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get demonRunLeft => SpriteAnimation.load(
        'demon_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(96, 48),
        ),
      );
  static Future<SpriteAnimation> get demonRunRight => SpriteAnimation.load(
        'demon_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(0, 48),
        ),
      );
}
