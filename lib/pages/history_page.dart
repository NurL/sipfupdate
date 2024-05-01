import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  bool _isClick = true;

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
                    "Riwayat Pemesanan",
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
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: InkWell(
                                onTap: () => {
                                  setState(() {
                                    _isClick = true;
                                  }),
                                },
                                child: Container(
                                  height: 40,
                                  width: 167,
                                  decoration: _isClick == true
                                      ? BoxDecoration(
                                          color: Color(0xffD4E8E1),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(16),
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xffffffff),
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(16)),
                                        ),
                                  child: Center(
                                    child: Text('Sedang Berjalan'),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () => {
                                  setState(() {
                                    _isClick = false;
                                  }),
                                },
                                child: Container(
                                  height: 40,
                                  width: 167,
                                  decoration: _isClick == false
                                      ? BoxDecoration(
                                          color: Color(0xffD4E8E1),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(16),
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xffffffff),
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(16)),
                                        ),
                                  child: Center(
                                    child: Text('Sudah Selesai'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Expanded(
                          child: _isClick == true
                              ? ListView(
                                  children: [
                                    ListBooking(nama: "Langganan A"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListBooking(nama: "Langganan B"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListBooking(nama: "Langganan C"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                )
                              : ListView(
                                  children: [
                                    ListBooking(nama: "Langganan D"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListBooking(nama: "Langganan E"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListBooking(nama: "Langganan F"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListBooking(nama: "Langganan G"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListBooking(nama: "Langganan H"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListBooking(nama: "Langganan I"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListBooking(nama: "Langganan J"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                        ),
                      ],
                    ),
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

class ListBooking extends StatefulWidget {
  final String? nama;
  const ListBooking({
    Key? key,
    required this.nama,
  }) : super(key: key);

  @override
  State<ListBooking> createState() => _ListBookingState();
}

class _ListBookingState extends State<ListBooking> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border(
          bottom: BorderSide(color: Colors.grey), // Atur warna border bottom sesuai keinginan
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.nama.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('1 April 2024 . 07:00 - 08:00'),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Text(
            'Rp 200.000',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
