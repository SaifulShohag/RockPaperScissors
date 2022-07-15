import 'package:flutter/cupertino.dart';
import 'package:r_p_s/gameBrain.dart';

class Data extends ChangeNotifier{
  int ptotalPoints = totalPoints;
  int pwin = win;
  int ploss = loss;

  void updateScore(v1, v2) {
    pwin = v1;
    ploss = v2;
    notifyListeners();
  }
  void changeTotalMatch(int value) {
    ptotalPoints = value;
    notifyListeners();
  }
  void resetScore() {
    win = loss = 0;
    pwin = ploss = 0;
    notifyListeners();
  }
}