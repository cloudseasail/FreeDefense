import 'dart:ui';

import 'package:freedefense/enemy/enemyV1.dart';
import 'package:freedefense/enemy/enemy_component.dart';
import 'package:flame/position.dart';

class EnemyA extends EnemyComponent with EnemyV1 {
  EnemyA({
    Position initPosition,
    Size size,
    double life = 100,
  }) : super(initPosition: initPosition, size: size, life: life) {
    this.life = life;
    this.maxLife = life;
    initSpriteSheet('enemy/enemyA.png');
  }
  @override
  void initialize() {
    setLiveAnimation();
    life = 80;
    speed = 50;
    size = size * 0.8;
  }
}
