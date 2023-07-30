import 'package:flutter/material.dart';

class IndexModel {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  ///
  ///
  // Callback function to notify listeners (IndexController) of changes
  VoidCallback? _listener;
  void notifyListeners() {
    if (_listener != null) {
      _listener!();
    }
  }

  // Register a listener (IndexController) to be notified of changes
  void addListener(VoidCallback listener) {
    _listener = listener;
  }

  // Unregister the listener (IndexController)
  void removeListener() {
    _listener = null;
  }
}
