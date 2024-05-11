import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HistoryLayout extends StatefulWidget {
  const HistoryLayout({super.key, this.client});
  final SupabaseClient? client;

  @override
  State<HistoryLayout> createState() => _HistoryLayoutState();
}

class _HistoryLayoutState extends State<HistoryLayout> {
  bool _isClick = true;

  get client => null;

  // void getVenueHasTenat() async {
  //   List data = await Supabase.instance.client.from('venue_has_tenant').select('*');
  // }

  @override
  Widget build(BuildContext context) {
    // final data = Supabase.instance.client.from('venue_has_tenant').select('*');
    final data2 =
        Supabase.instance.client.from('venue_has_tenant').select('*, schedules(*), user(*)');

    // final data2 = Supabase.instance.client
    //     .from('venue_has_tenant')
    //     .select('*, venue_has_tenant(*), venue(*), schedules(*)')
    //     .eq('venue_has_tenant.schedules_id', 'scheduless.id')
    //     .eq('schedules.venue_id', 'venue.id');

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 35, 34),
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
                              ? FutureBuilder(
                                  future: data2,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState == ConnectionState.waiting) {
                                      return Center(child: CircularProgressIndicator());
                                    } else if (snapshot.hasError) {
                                      return Text('Error: ${snapshot.error}');
                                    } else {
                                      List tenants = snapshot.data
                                          as List; // Ubah snapshot.hasData menjadi snapshot.data
                                      print(tenants[0]['schedules_id']);
                                      return ListView.builder(
                                        itemCount: tenants.length,
                                        itemBuilder: ((context, index) {
                                          Map<String, dynamic> tenant = tenants[
                                              index]; // Gunakan Map<String, dynamic> untuk data tenant
                                          return ListTile(
                                            title: ListBooking(
                                              nama: tenant['schedules_id'].toString(),
                                              jadwal: tenant['schedules']['time'].toString(),
                                              tanggal: tenant['tanggal'].toString(),
                                              harga: '50000',
                                            ),
                                          );
                                        }),
                                      );
                                    }
                                  },
                                )
                              : Text('Proses Data ke dua'),
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
  final String nama;
  final String tanggal;
  final String jadwal;
  final String harga;
  const ListBooking(
      {super.key,
      required this.nama,
      required this.tanggal,
      required this.jadwal,
      required this.harga});

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
              Text('${widget.tanggal} . ${widget.jadwal}'),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Text(
            widget.harga,
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
