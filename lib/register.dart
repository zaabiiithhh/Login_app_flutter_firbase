import 'package:flutter/material.dart';
import 'package:login_app/login.dart';
import 'package:login_app/services/authservices.dart';

class Registarscreen extends StatefulWidget {
  const Registarscreen({super.key});

  @override
  State<Registarscreen> createState() => _RegistarscreenState();
}

class _RegistarscreenState extends State<Registarscreen> {
  TextEditingController user = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
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
                controller: user,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(208, 222, 225, 227),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
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
                  hintText: "Moblie Number or Email",
                  hintStyle: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(208, 222, 225, 227),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
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
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: cpassword,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                  hintText: "Conform Password",
                  hintStyle: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(208, 222, 225, 227),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  register(
                      username: user.text,
                      email: email.text,
                      password: password.text,
                      conformpassword: cpassword.text,
                      context: context);
                },
                child: Text("Sign up"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loginscreen()));
              },
              child: Text(
                "Have an account? Log in",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}














// import 'package:flutter/material.dart';
// import 'package:login_app/login.dart';

// class Registarscreen extends StatelessWidget {
//   const Registarscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "Welcome to instagram",
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       Icons.person,
//                       color: Colors.amber,
//                     ),
//                     hintText: "Enter username",
//                     hintStyle: TextStyle(
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
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       Icons.email,
//                       color: Colors.amber,
//                     ),
//                     hintText: "Enter your email",
//                     hintStyle: TextStyle(
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
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       Icons.password_outlined,
//                       color: Colors.amber,
//                     ),
//                     hintText: "Password",
//                     hintStyle: TextStyle(
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
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       Icons.password_outlined,
//                       color: Colors.amber,
//                     ),
//                     hintText: "Conform password",
//                     hintStyle: TextStyle(
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
//             SizedBox(
//               height: 55,
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Resistor"),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Color.fromARGB(255, 246, 13, 13),
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20))),
//               ),
//             ),
//             TextButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Loginscreen()));
//                 },
//                 child: Text("Have you an account"))
//           ],
//         ),
//       ),
//     );
//   }
// }
