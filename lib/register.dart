import 'package:flutter/material.dart';
import 'package:login_app/login.dart';

class Registarscreen extends StatelessWidget {
  const Registarscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to instagram",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.amber,
                    ),
                    hintText: "Enter username",
                    hintStyle: TextStyle(
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.amber,
                    ),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.password_outlined,
                      color: Colors.amber,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.password_outlined,
                      color: Colors.amber,
                    ),
                    hintText: "Conform password",
                    hintStyle: TextStyle(
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
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Resistor"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 246, 13, 13),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginscreen()));
                },
                child: Text("Have you an account"))
          ],
        ),
      ),
    );
  }
}
