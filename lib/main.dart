import 'package:ahec/pages/home.dart';
import 'package:ahec/pages/login.dart';
import 'package:ahec/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'pages/Singuppages/singup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      color: Colors.indigo[900],
      routes: {
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.LoginScreenRoute: (context) => LoginScreen(),
        MyRoutes.singRoute: (context) => singUPage(),
      },
    );
  }
}
