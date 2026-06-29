

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 1. Write your variables and data lists here (Marked as final)
  List<String> tasks = ['Learn Flutter',
  'Study CSIT',
    'Exercise'
    'Push to Github'
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App Title'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        // 2. Write your visual UI components here
        body: Center(
          child:  ListView.builder(itemCount: tasks.length, itemBuilder: (context, index) {
            return ListTile(
              title: Text(tasks[index]),
            );
          },
          )
        ),
      ),
    );
  }
}


