// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_status_saver/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {

    if(_formKey.currentState!.validate())
    {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        // color: Colors.white,
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(children: [

          SizedBox(height: 50,),

          //image widget
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover),

          //gap
          const SizedBox(height: 20),

          //Log in heading
          Text(
            "Welcome $name",
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username can't be empty";
                    }
                    
                    return null;
                    
                  },
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),

                //password
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter Password",
                    
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password can't be empty";
                    }
                    if (value.length < 6) {
                      return "Password length must be atleast 6 characters.";
                    }
                    
                    return null;
                    
                  },
                  obscureText: true,
                ),

                //gap
                const SizedBox(height: 40),

                //login button
                ElevatedButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(150, 45),
                  ),
                  onPressed: () => moveToHome(context),
                  child: const Text("Sign In"),
                )
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
