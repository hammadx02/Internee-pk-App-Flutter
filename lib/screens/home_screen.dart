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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 15.0,
                bottom: 10,
              ),
              child: Text(
                'Home',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Divider(
              color: Colors.green,
              thickness: 0.7,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(
                        0,
                        2,
                      ),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 18.0,
                    horizontal: 10,
                  ),
                  child: Text(
                    'Welcome from Internee.pk, Hammad Ali Shah!',
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 0.7,
            ),
          ],
        ),
      ),
    );
  }
}
