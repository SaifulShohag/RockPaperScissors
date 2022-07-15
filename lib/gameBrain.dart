import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:provider/provider.dart';
import 'package:r_p_s/Data.dart';

final player = AudioCache();
int imageNum = 5;
int yourNum = 4;
int win = 0;
int loss = 0;
int totalPoints = 10;
String result;

void gamePlay(int num) {
  yourNum = num;
  imageNum = Random().nextInt(3) + 1;
}

void gameScore(BuildContext context) {
  if (yourNum == 1) {
    if (imageNum == 2) {
      loss = loss + 1;
      player.play('lose.wav');
    } else if (imageNum == 3) {
      win = win + 1;
      player.play('win.wav');
    }
  } else if (yourNum == 2) {
    if (imageNum == 1) {
      win = win + 1;
      player.play('win.wav');
    } else if (imageNum == 3) {
      loss = loss + 1;
      player.play('lose.wav');
    }
  } else if (yourNum == 3) {
    if (imageNum == 1) {
      loss = loss + 1;
      player.play('lose.wav');
    } else if (imageNum == 2) {
      win = win + 1;
      player.play('win.wav');
    }
  }
  Provider.of<Data>(context, listen: false).updateScore(win, loss);
}