import 'package:flutter/material.dart';
import 'package:login_app/services/authservices.dart';

class Forgetscreen extends StatefulWidget {
  const Forgetscreen({super.key});

  @override
  State<Forgetscreen> createState() => _ForgetscreenState();
}

class _ForgetscreenState extends State<Forgetscreen> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Trouble logging in?",
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
                  hintText: "Email, Phone, or Username",
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
                  forgot(email: email.text, context: context);
                },
                child: Text("Send Login Link"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Forgetscreen extends StatelessWidget {
//   const Forgetscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "Forget password",
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
//               height: 55,
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Forget password"),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Color.fromARGB(255, 254, 3, 3),
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20))),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
