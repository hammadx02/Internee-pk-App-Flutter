import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pakistan\'s Virtual Internship Platform',
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
        ),
        actions: const [
          Icon(
            Icons.person_2_rounded,
          ),
          Icon(
            Icons.arrow_downward_rounded,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
