import 'package:flutter/material.dart';
import 'package:whatsapp_status_saver/pages/homepage.dart';
import 'package:whatsapp_status_saver/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home" :(context) => Homepage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
