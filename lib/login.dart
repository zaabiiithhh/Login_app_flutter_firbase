import 'package:flutter/material.dart';
import 'package:login_app/forget.dart';
import 'package:login_app/register.dart';
import 'package:login_app/services/authservices.dart';

class Loginscreen extends StatefulWidget {
  Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Log In",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  hintText: "Phone number, username, or email",
                  hintStyle: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(208, 222, 225, 227),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(208, 222, 225, 227),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 260),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Forgetscreen()));
                },
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40, // height small aakki
              width: double.infinity, // full width
              child: ElevatedButton(
                onPressed: () {
                  login(
                      email: email.text,
                      password: password.text,
                      context: context);
                },
                child: Text("Log in"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // blue background
                  foregroundColor: Colors.white, // white text
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Registarscreen()));
              },
              child: Text(
                "Don't have an account? Signup",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}












// mport 'package:flutter/material.dart';
// import 'package:login_app/forget.dart';
// import 'package:login_app/register.dart';

// class Loginscreen extends StatelessWidget {
//   const Loginscreen({super.key});

//   get onPressed => null;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text(
//               "Welcome to insta",
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: const Icon(
//                       Icons.email,
//                       color: Colors.amber,
//                     ),
//                     hintText: "Enter your email",
//                     hintStyle: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 10,
//                       fontWeight: FontWeight.normal,
//                     ),
//                     filled: true,
//                     fillColor: Colors.blue,
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                         borderSide: BorderSide.none)),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: const Icon(
//                       Icons.password_outlined,
//                       color: Colors.amber,
//                     ),
//                     hintText: "Password",
//                     hintStyle: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 10,
//                       fontWeight: FontWeight.normal,
//                     ),
//                     filled: true,
//                     fillColor: Colors.blue,
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                         borderSide: BorderSide.none)),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 260),
//               child: TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => Forgetscreen()));
//                   },
//                   child: Text("Forget password")),
//             ),
//             SizedBox(
//               height: 55,
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Login"),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20))),
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Registarscreen()));
//               },
//               child: Text(
//                 "Do you have an account",
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }