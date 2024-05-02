import 'package:flutter/material.dart';
import 'package:sipfupdate/layout/booking_layout.dart';
import 'package:sipfupdate/layout/history_layout.dart';
import 'package:sipfupdate/layout/home_layout.dart';
import 'package:sipfupdate/layout/profile_layout.dart';
import 'package:sipfupdate/utils/color_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  final layout = [
    const HomeLayout(),
    const HistoryLayout(),
    const BookingLayout(),
    const ProfileLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primary,
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
          selectedItemColor: ColorConstant.primary,
          type: BottomNavigationBarType.fixed,
          items: const [
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
