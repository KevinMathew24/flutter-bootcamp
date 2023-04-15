import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:seenit/view/Signupscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var color = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Login Screen"),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(8), // Added this
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(8), // Added this
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // set states can only be used on statefull widgets
                      color = Colors.grey;
                    });
                  },
                  child: const Text("Login"),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't  have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text("Sign up."))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
//use hinttext for text on top of the textfield