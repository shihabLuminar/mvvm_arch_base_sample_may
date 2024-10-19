import 'package:stacked/stacked.dart';

class HomeviewViewmodel extends BaseViewModel {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}
