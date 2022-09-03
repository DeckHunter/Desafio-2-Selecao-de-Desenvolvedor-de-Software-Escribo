import 'package:bonfire/bonfire.dart';

class DecorationSpriteSheet {
  static Future<Sprite> get itemLv1 => Sprite.load('map/forestDecoration_0.png',
      srcPosition: Vector2(32, 96), srcSize: Vector2(16, 32));
  static Future<Sprite> get itemLv2 => Sprite.load('map/forestDecoration_0.png',
      srcPosition: Vector2(96, 96), srcSize: Vector2(16, 32));
}
