import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khutaa/src/core/provider/config/app_base_provider.dart';
import 'package:pedometer/pedometer.dart';
import '../../../utils/app_extenstions_util.dart';
import '../../data/network/database_client.dart';

class PedometerProvider extends BaseProvider {
  late Stream<StepCount> _stepCountStream;
  BuildContext? context;
  String steps = '0';
  int _previousPoints = 0;
  int healthPoint = 0;
  int _messagePointsGained = 0;

  setContext(BuildContext context) {
    context = context;
    notifyListeners();
  }

  void onStepCount(StepCount event) {
    print(event);
    steps = event.steps.toString();

    calcHealtPoints(event.steps);
    notifyListeners();
  }

  calcHealtPoints(int steps) {
    int pointsMultipler = (steps / 100).floor();
    int pointsGained = pointsMultipler;

    healthPoint = pointsGained;

    _messagePointsGained = pointsGained - _previousPoints;
    var data = {"steps": steps, "healthPoints": pointsGained};
    var historyData = {
      "message": "You ganed  $_messagePointsGained new points",
      "userId": FirebaseAuth.instance.currentUser?.uid
    };
    FirebaseClient().updateUserSteps(data);
    FirebaseClient().addHistoryData(historyData);
    context?.showCustomSnackBar(
        "You have gained $_messagePointsGained new points");
    _previousPoints = pointsGained;
    notifyListeners();
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    steps = '0';
    notifyListeners();
  }

  void initPlatformState() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);
  }
}
