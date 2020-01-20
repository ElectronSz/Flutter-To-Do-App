import 'package:flutter/material.dart';
import 'package:lookaround/ui/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        // Add the 3 lines from here...
        primaryColor: Colors.white,
      ), // ... to here.
      home: Scaffold(
        appBar: AppBar(
          title: Text("Job Seeker"),
        ),
        body: Login(),
      ),
      
    );
  }
}
