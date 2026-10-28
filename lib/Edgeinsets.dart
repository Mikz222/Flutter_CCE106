
import 'package:flutter/material.dart';

void main() {
  runApp(const EdgeInsetsApp());
}

class EdgeInsetsApp extends StatelessWidget {
  const EdgeInsetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EdgeInsetsPage(),
    );
  }
}

class EdgeInsetsPage extends StatelessWidget {
  const EdgeInsetsPage({super.key});

  static const Color green = Color(0xFF4CAF50);

  Widget buildExample({
    required String title,
    required EdgeInsets margin,
    required Color color,
    Color textColor = Colors.black,
  }) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      color: color,
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: textColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BOBO',
          style: TextStyle(fontSize: 12),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        toolbarHeight: 44,
      ),
      backgroundColor: const Color(0xFFFFF7FF),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildExample(
            title: 'EdgeInsets.all(30)',
            margin: const EdgeInsets.all(30),
            color: Colors.red,
          ),

          buildExample(
            title: 'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
            margin: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 10,
            ),
            color: Colors.yellow,
          ),

          buildExample(
            title: 'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
            margin: const EdgeInsets.only(
              left: 15,
              top: 10,
              right: 15,
              bottom: 20,
            ),
            color: Colors.blue,
            textColor: Colors.white,
          ),

          buildExample(
            title: 'EdgeInsets.fromLTRB(10, 20, 30, 40)',
            margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            color: green,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
