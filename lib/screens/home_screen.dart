import 'package:flutter/material.dart';

import '../widgets/task.dart';

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
        leading: Icon(
          Icons.menu,
          color: Colors.grey[300],
        ),
        actions: [
          Icon(
            Icons.person_2_rounded,
            color: Colors.grey[300],
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: SingleChildScrollView(
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
                      horizontal: 10,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Welcome from Internee.pk, Hammad Ali Shah!',
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 0.7,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Your running tasks',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '#',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Task id',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Actions',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Task(
                        numText: '1',
                        taskText: 'TSK-000-25',
                      ),
                      Divider(),
                      Task(
                        numText: '2',
                        taskText: 'TSK-000-141',
                      ),
                      Divider(),
                      Task(
                        numText: '3',
                        taskText: 'TSK-000-142',
                      ),
                      Divider(),
                      Task(
                        numText: '4',
                        taskText: 'TSK-000-143',
                      ),
                      Divider(),
                      Task(
                        numText: '5',
                        taskText: 'TSK-000-144',
                      ),
                      Divider(),
                      Task(
                        numText: '6',
                        taskText: 'TSK-000-145',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
