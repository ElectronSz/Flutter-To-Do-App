import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  AuthProvider() {
    fetchSomething();
  }

  Future<void> fetchSomething() async {
    print("Hello there");
  }
}