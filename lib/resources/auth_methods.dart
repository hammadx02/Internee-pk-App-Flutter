// import 'dart:js';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:internee_pk/screens/home_screen.dart';
// import 'package:internee_pk/utils/utils.dart';

// class AuthMethods {
//   final _auth = FirebaseAuth.instance;

//   Future<String> loginUser({
//     required String email,
//     required String password,
//   }) async {
//     String res = 'Some error occured';

//     if (email.isNotEmpty || password.isNotEmpty) {
//       await _auth
//           .signInWithEmailAndPassword(
//             email: email,
//             password: password,
//           )
//           .then(
//             (value) => Navigator.push(
//               context as BuildContext,
//               MaterialPageRoute(
//                 builder: (context) => const HomeScreen(),
//               ),
//             ),
//           )
//           .onError((error, stackTrace) {
//         showSnackBar(context as BuildContext, error.toString());
//       });
//     res = 'success';
//     } else {
//       return  'please enter all the fields';
//     }
//   }
// }
