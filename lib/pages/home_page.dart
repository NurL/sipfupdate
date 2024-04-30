import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          iconSize: 24,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
            BottomNavigationBarItem(icon: Icon(Icons.document_scanner_rounded), label: 'Riwayat'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Pemesanan'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          ],
        ),
      ),
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
