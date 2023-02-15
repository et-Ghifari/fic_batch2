import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tugas 1'),
        ),
        body: const Center(
          child: ChangeText(),
        ),
      ),
    );
  }
}

class ChangeText extends StatefulWidget {
  const ChangeText({super.key});

  @override
  State<ChangeText> createState() => _ChangeTextState();
}

class _ChangeTextState extends State<ChangeText> {
  DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Text : $time'),
        ElevatedButton(
          onPressed: () {
            time = DateTime.now();
            setState(() {});
          },
          child: const Text('Update'),
        ),
      ],
    );
  }
}
