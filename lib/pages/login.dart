import 'package:flutter/material.dart';
import 'package:perfume_app/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mycontroller = TextEditingController();

String greetingUser ="";
void greetUser(){
  setState(() {
    greetingUser = "Hello, " + mycontroller.text;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
  child: Padding(
    padding: const EdgeInsets.all(25.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: mycontroller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Enter your name",
          ),
        ),
        SizedBox(height: 15), // Padding between fields
        TextField(
          controller: mycontroller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Enter your password",
          ),
        ),
        SizedBox(height: 20), // Padding before login button
        ElevatedButton(
          onPressed: greetUser,
          child: Text("Login"),
        ),
        SizedBox(height: 15), // Padding before the new text
        Text("Don't have an account?"),
        SizedBox(height: 8), // Padding before the signup button
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signup()),
            );
          },
          child: Text("Sign Up"),
        ),
      ],
    ),
  ),
),

    );
  }
}