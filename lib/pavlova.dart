
import 'package:flutter/material.dart';

void main() {
  runApp(const PavlovaApp());
}

class PavlovaApp extends StatelessWidget {
  const PavlovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PavlovaPage(),
    );
  }
}

class PavlovaPage extends StatelessWidget {
  const PavlovaPage({super.key});

  static const Color green = Color(0xFF4CAF50);

  Widget buildStars(int rating) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (index) => Icon(
          Icons.star,
          size: 18,
          color: index < rating ? green : Colors.black87,
        ),
      ),
    );
  }

  Widget buildInfo(IconData icon, String title, String value) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: green, size: 22),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(value, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const description =
        'Pavlova is a meringue-based dessert named after the '
        'Russian ballerina Anna Pavlova. Pavlova features a crisp '
        'crust and soft, light inside, topped with fruit and '
        'whipped cream.';

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
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Image.asset(
            'assets/pavlova.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
          ),

          const SizedBox(height: 4),

          const Center(
            child: Text(
              'Strawberry Pavlova',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 10),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 9,
                height: 1.15,
              ),
            ),
          ),

          const SizedBox(height: 14),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildStars(2),
              const SizedBox(width: 8),
              const Text(
                '90 Reviews',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              buildInfo(Icons.kitchen, 'PREP', '25 min'),
              buildInfo(Icons.timer, 'COOK', '1 hr'),
              buildInfo(Icons.restaurant, 'FEEDS', '4-6'),
            ],
          ),
        ],
      ),
    );
  }
}
