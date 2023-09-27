import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

Future<String> loginUser({
  required String email,
  required String password,
}) async {
  String res = 'Some error occured';
  try {
    if (email.isNotEmpty || password.isNotEmpty) {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      res = 'success';
    } else {
      res = 'please enter all the fields';
    }
  } catch (err) {
    return err.toString();
  }
  return res;
}
