import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sipfupdate/components/app_header.dart';
import 'package:sipfupdate/components/input.dart';
import 'package:sipfupdate/utils/color_constant.dart';

class BookingLayout extends StatelessWidget {
  const BookingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D2F24),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppHeader(title: 'Pemesanan Lapangan'),
            Container(
              height: MediaQuery.sizeOf(context).height - 200,
              //mediasizeof untuk mengatur agar tingginya menyesuaikan tinggi layar
              //- 200 untuk mengurangi ukuran agar tidak melebihi dan
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                children: [
                  const Input(
                    text: 'Pilih Tanggal',
                    icon: Icon(Icons.calendar_month),
                  ),
                  SizedBox(height: 40),
                  const Input(
                    text: 'Pilih Lapangan',
                    icon: Icon(Icons.search),
                  ),
                  SizedBox(height: 40),
                  const Input(
                    text: 'Pilih Jam',
                    icon: Icon(CupertinoIcons.clock),
                  ),
                  Expanded(child: Container()),
                  NewWidget(
                    onTap: () {
                      print('uji lagi');
                    },
                    title: 'ini judulnya',
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    this.onTap,
    required this.title,
  });

  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstant.primary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
