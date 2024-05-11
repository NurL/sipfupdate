import 'package:flutter/material.dart';
import 'package:sipfupdate/components/app_header.dart';
import 'package:sipfupdate/components/button.dart';
import 'package:sipfupdate/components/input.dart';
import 'package:sipfupdate/layout/home_layout.dart';
import 'package:sipfupdate/utils/color_constant.dart';

class ProfileLayout extends StatelessWidget {
  const ProfileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D2F24),
      body: SafeArea(
        child: Column(
          children: [
            AppHeader(title: 'Profil'),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //NAMA
                    Input(
                      text: 'Nama',
                      borderColor: Colors.black,
                    ),
                    //NOMOR HP
                    Input(
                      text: 'Nomor HP',
                      borderColor: Colors.black,
                    ),
                    //EMAIL
                    Input(
                      text: 'Email',
                      borderColor: Colors.black,
                    ),
                    //ALAMAT
                    Input(
                      text: 'Alamat',
                      borderColor: Colors.black,
                    ),
                    //KATA SANDI
                    Input(
                      text: '********',
                      borderColor: Colors.black,
                    ),

                    Expanded(child: Container()),

                    //TOMBOL PERBAHARUI
                    Button(
                      title: 'Perbaharui Profil',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeLayout()),
                        );
                      },
                    ),

                    SizedBox(height: 12),

                    //TOMBOL VOUCHER
                    Button(
                      title: 'Lihat Voucher Kamu',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeLayout()),
                        );
                      },
                      color: ColorConstant.secondary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
