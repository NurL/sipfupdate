import 'package:flutter/material.dart';

class ProfileLayout extends StatelessWidget {
  const ProfileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D2F24),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24),
              child: SizedBox(
                height: 124,
                child: Center(
                  child: Text(
                    "Profil",
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
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Nama',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(width: 1, color: const Color(0xffD6D6D6)),
                            ),
                            child: const Center(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    "Nama",
                                    style: TextStyle(
                                      color: Color(0xFF030907),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //NOMOR HP

                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Nomor HP',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(width: 1, color: const Color(0xffD6D6D6)),
                            ),
                            child: const Center(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    "Nomor HP",
                                    style: TextStyle(
                                      color: Color(0xFF030907),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //EMAIL
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Email',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(width: 1, color: const Color(0xffD6D6D6)),
                            ),
                            child: const Center(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    "Email",
                                    style: TextStyle(
                                      color: Color(0xFF030907),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //ALAMAT
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Alamat',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(width: 1, color: const Color(0xffD6D6D6)),
                            ),
                            child: const Center(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    "Alamat",
                                    style: TextStyle(
                                      color: Color(0xFF030907),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Kata Sandi
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Kata Sandi',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(width: 1, color: const Color(0xffD6D6D6)),
                            ),
                            child: const Center(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    "*********",
                                    style: TextStyle(
                                      color: Color(0xFF030907),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Expanded(
                    //   child: Container(),
                    // ),
                    //tombol perbaharui
                    Column(
                      children: [
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xFF134736),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Center(
                            child: Text(
                              "Perbaharui Profil",
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
                    //tombol voucher
                    Column(
                      children: [
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xFF6EB49D),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Center(
                            child: Text(
                              "Lihat Voucher Kamus",
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
