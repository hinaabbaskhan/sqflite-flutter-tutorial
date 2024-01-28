import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sqflite FLutter Example'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //This is Insert Button
          TextButton(
            onPressed: () async {
              //call insert method
              final Map<String, dynamic> record = {"id": 5, "name": "Anna"};
              final recordId =
                  await DatabaseHelper.databaseHelper.insert(record);
              print(recordId);
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue[700],
                foregroundColor: Colors.white),
            child: const Text('Insert'),
          ),
          //This is Retrieve Button
          TextButton(
            onPressed: () async {
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.grey[600],
                foregroundColor: Colors.white),
            child: const Text('Retrieve'),
          ),
          // This is Update Button
          TextButton(
            onPressed: () async {
              //call update method
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.green[400],
                foregroundColor: Colors.white),
            child: const Text('Update'),
          ),

          // This is Delete Button
          TextButton(
            onPressed: () async {
              //call delete method
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.pink[400],
                foregroundColor: Colors.white),
            child: const Text('Delete'),
          ),
        ],
      )),
    );
  }
}
