import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeiro app no Git',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: showText ? Colors.greenAccent : Colors.white,
      body: Center(
        child: showText
            ? const Text(
          'Hello Friend!',
          style: TextStyle(
            fontSize: 24,
            color: Colors.purpleAccent,
          ),
        )
            : ElevatedButton(
          onPressed: () {
            setState(() {
              showText = true;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            side: const BorderSide(color: Colors.red, width: 2),
            padding: const EdgeInsets.symmetric(
                horizontal: 24.0, vertical: 16.0),
          ),
          child: const Text(
            'Click Here!',
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

