// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(children: [
          //image widget
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover),

          //gap
          const SizedBox(height: 20),

          //Log in heading
          const Text(
            "Log In",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          //Form ->

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            child: Column(
              children: [
                //username
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Username"),
                    hintText: "Enter User Name",
                  ),
                ),

                //password
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter Password",
                  ),
                  obscureText: true,
                ),

                //gap
                const SizedBox(height: 20),

                //login button
                ElevatedButton(
                  child: const Text("Sign In"),
                  onPressed: () {
                    print("Hello There.");
                  },
                )
              ],
            ),
          )
        ]));
  }
}
