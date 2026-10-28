
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final String username;
  final String password;

  const LandingPage({
    super.key,
    required this.username,
    required this.password,
  });

  static const Color blue = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BOBO',
          style: TextStyle(fontSize: 12),
        ),
        centerTitle: true,
        backgroundColor: blue,
        foregroundColor: Colors.white,
        toolbarHeight: 44,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 30),

          const Icon(
            Icons.check_circle,
            size: 80,
            color: blue,
          ),

          const SizedBox(height: 15),

          const Center(
            child: Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 10),

          const Center(
            child: Text(
              'You have successfully logged in.',
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 30),

          const Text(
            'Account Information',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          ListTile(
            leading: const Icon(Icons.person, color: blue),
            title: const Text('Username'),
            subtitle: Text(username),
          ),

          ListTile(
            leading: const Icon(Icons.lock, color: blue),
            title: const Text('Password'),
            subtitle: const Text('Hidden for security'),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
