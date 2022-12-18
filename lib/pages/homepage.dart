// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    
    int days = 30;
    String name = "Arnab";

    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text("Whatsapp Status Saver"),
      ),
      body: Center(
        child: Text("Welcome to $days days of Flutter by $name."),
      ),
    );
  }
}
