import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:internee_pk/screens/forgot_password_screen.dart';
import 'package:internee_pk/screens/home_screen.dart';
import 'package:internee_pk/utils/utils.dart';
import 'package:internee_pk/widgets/text_form_field.dart';
import '../widgets/buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  final _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() {
    setState(() {
      loading = true;
    });
    _auth
        .signInWithEmailAndPassword(
            email: _emailController.text.toString(),
            password: _passwordController.text.toString())
        .then(
      (value) {
        setState(() {
          loading = false;
        });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
    ).onError((error, stackTrace) {
      setState(() {
        loading = false;
      });
      debugPrint(error.toString());
      Utils().toastMessage(
        error.toString(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
            ),
            const SizedBox(
              height: 55,
            ),
            MyTextFiled(
              controller: _emailController,
              hintText: 'Email',
              icon: const Icon(
                Icons.email_rounded,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextFiled(
              controller: _passwordController,
              hintText: 'Password',
              icon: const Icon(
                Icons.visibility_rounded,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.check_box_outline_blank_rounded,
                  color: Colors.grey,
                ),
                Expanded(
                  child: Text(
                    'Remember Me',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                  child: MyButton(
                    loading: loading,
                    title: 'Sign In',
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        loginUser();
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const ForgotPasswordScreen()),
                  ),
                );
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
