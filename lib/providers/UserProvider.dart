import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  UserProvider() {
    fetchSomething();
  }

  Future<void> fetchSomething() async {
    print("Hello there");
  }
}