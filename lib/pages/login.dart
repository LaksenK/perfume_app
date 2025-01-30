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
        SizedBox(height: 15), 
        TextField(
          controller: mycontroller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Enter your password",
          ),
        ),
        SizedBox(height: 20), 
        ElevatedButton(
          onPressed: greetUser,
          child: Text("Login"),
        ),
        SizedBox(height: 15), 
        Text("Don't have an account?",style: TextStyle( color: Theme.of(context).brightness == Brightness.dark
        ? Colors.white 
        : Colors.black,),),
        SizedBox(height: 8), 
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