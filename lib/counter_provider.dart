import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  // Sate variable pair for the counter (private/public)
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
