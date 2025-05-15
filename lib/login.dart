import 'package:flutter/material.dart';
import 'package:login_app/forget.dart';
import 'package:login_app/register.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Welcome to insta",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.amber,
                    ),
                    hintText: "Enter your email",
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    ),
                    filled: true,
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.password_outlined,
                      color: Colors.amber,
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    ),
                    filled: true,
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 260),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Forgetscreen()));
                  },
                  child: Text("Forget password")),
            ),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Registarscreen()));
              },
              child: Text(
                "Do you have an account",
              ),
            )
          ],
        ),
      ),
    );
  }
}
