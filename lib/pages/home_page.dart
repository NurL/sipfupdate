import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              //salam untuk user
              padding: const EdgeInsets.all(24),
              child: Text(
                "Hi, user",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              //carousel foto lapangan
              width: double.infinity,
              height: 384,
              child: Text('kedua'),
              padding: EdgeInsets.all(25),
              color: Colors.grey[100],
            ),
          ],
        ),
      ),
    );
  }
}
