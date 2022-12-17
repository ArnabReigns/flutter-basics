import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_status_saver/pages/homepage.dart';
import 'package:whatsapp_status_saver/pages/loginpage.dart';
import 'package:whatsapp_status_saver/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // statusBarColor: Colors.transparent,
      
    ));
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute :(context) => const Homepage(),
        MyRoutes.loginRoute : (context) => const LoginPage(),
      },
    );
  }
}
