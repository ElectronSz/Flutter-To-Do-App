import 'package:flutter/material.dart';
import 'package:lookaround/auth/RegisterForm.dart';
import 'package:lookaround/providers/AuthProvider.dart';
import 'package:lookaround/providers/UserProvider.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'Startup Name Generator',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: SignUpForm(),
      ),
    );
  }
}

// MultiProvider(
//   providers: [
//     Provider<Something>(create: (_) => Something()),
//     Provider<SomethingElse>(create: (_) => SomethingElse()),
//     Provider<AnotherThing>(create: (_) => AnotherThing()),
//   ],
//   child: someWidget,
// )
