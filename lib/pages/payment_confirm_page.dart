import 'package:flutter/material.dart';

class PaymentConfirmPage extends StatelessWidget {
  const PaymentConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D2F24),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                height: 124,
                child: Center(
                  child: Text(
                    "Konfirmasi Pembayaran",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                //tombol
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Pesanan Kamu Sudah Terkonfirmasi',
                          style: TextStyle(
                            fontSize: 32,
                            color: Color(0xff134736),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        'Silahkan bayar langsung di Front Office kami maksimal 30 menit sebelum jadwal yang sudah dipesan atau pesanan kamu akan otomatis dibatalkan',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff134736),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Center(
                        child: Icon(
                          Icons.check_circle_outline_sharp,
                          size: 50,
                        ),
                      ),
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color(0xFF134736),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "Kembali ke Beranda",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
