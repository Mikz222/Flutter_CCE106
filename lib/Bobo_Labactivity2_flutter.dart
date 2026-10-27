
import 'package:flutter/material.dart';

class BoboLabActivity extends StatelessWidget {
  const BoboLabActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack and Image Activity'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),

              const Text(
                'Six Overlapping Containers',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Part 1: Stack with six containers
              SizedBox(
                height: 200,
                width: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.green,
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      color: Colors.black,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'Genshin Impact Characters',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Part 2: Images arranged vertically
              Image.asset(
                'assets/morax.jpg',
                width: 200,
                height: 180,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 10),

              Image.asset(
                'assets/ei.jpg',
                width: 200,
                height: 180,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 10),

              Image.asset(
                'assets/focalor.jpg',
                width: 200,
                height: 180,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
