import 'package:flutter/material.dart';
import 'package:sipfupdate/pages/booking_page.dart';
import 'package:sipfupdate/pages/history_page.dart';
import 'package:sipfupdate/pages/home_page.dart';
import 'package:sipfupdate/pages/profile_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _index = 0;

  final layout = [
    HomePage(),
    HistoryPage(),
    BookingPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: layout[_index],
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          currentIndex: _index,
          iconSize: 24,
          unselectedItemColor: Colors.grey[500],
          selectedItemColor: Color(0xFF0D2F24),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
            BottomNavigationBarItem(icon: Icon(Icons.document_scanner_rounded), label: 'Riwayat'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Pemesanan'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          ],
        ),
      ),
    );
  }
}
