// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Arnab";

    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp Status Saver"),
      ),
      body: Center(
        child: Text("Welcome to $days days of Flutter by $name."),
      ),
      drawer: Drawer(),
    );
  }
}
