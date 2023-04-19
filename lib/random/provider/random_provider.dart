import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:random/random/model/random_model.dart';
import 'package:random/utils/random_helper.dart';

class RandomProvider extends ChangeNotifier
{
  Future<RandomPerson?> findRandomPerson()
  async {
    return await ApiHelper().randomPersonApi();
  }

  int index = 0;
  int dob = 0;
  void changeIndex()
  {
    Random randomNum = Random();
    index = randomNum.nextInt(5);
    notifyListeners();
  }
}