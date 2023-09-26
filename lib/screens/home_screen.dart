import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class InterneeApp extends StatefulWidget {
  @override
  _InterneeAppState createState() => _InterneeAppState();
}

class _InterneeAppState extends State<InterneeApp> {
  List<dynamic> internshipData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://internee.pk/api/internships'));
    
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        internshipData = data;
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internee.pk App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internee.pk Internships'),
        ),
        body: ListView.builder(
          itemCount: internshipData.length,
          itemBuilder: (context, index) {
            final internship = internshipData[index];
            return ListTile(
              title: Text(internship['title']),
              subtitle: Text(internship['company']),
              // Add more fields to display additional information
            );
          },
        ),
      ),
    );
  }
}
