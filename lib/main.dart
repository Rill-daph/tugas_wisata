import 'package:flutter/material.dart';

void main() {
  runApp(aplikasi_wisata());
}

class aplikasi_wisata extends StatefulWidget {
  @override
  State<aplikasi_wisata> createState() => aplikasi_wisata_State();
}

class aplikasi_wisata_State extends State<aplikasi_wisata> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Color(0x5532422c).withOpacity(0.85),
          elevation: 0,
          title: Row(
            children: [
              Icon(Icons.home, color: Color(0xffffffff)),
              SizedBox(width: 8),
              Text(
                "Warna Warni Village",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff),
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff364230),
                ),
              ),
            ),

            // 2. OVERLAY HITAM TRANSPARAN
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.25),
              ),
            ),

            // 3. KONTEN UTAMA
            LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Spasi atas agar konten tidak tertutup penuh oleh AppBar
                          SizedBox(
                            height: kToolbarHeight +
                                MediaQuery.of(context).padding.top +
                                10,
                          ),

                          // GAMBAR DENGAN CONTAINER (TANPA PADDING)
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            height: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/kampung-warna-warni-image-by-instagram-@fajarhw.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(height: 15),

                          // CONTAINER ALAMAT DAN KONTAK
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Color(0xffaeb8a9),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                // ALAMAT
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Alamat",
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Jodipan, Malang",
                                        style: TextStyle(
                                          color: Color(0xff0a0a0a),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // KONTAK
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Kontak",
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "0812-3456-7890",
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 15),

                          // DETAIL WISATA
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffaeb8a9),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  "Detail Wisata",
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Kampung Warna Warni Jodipan merupakan "
                                  "salah satu tempat wisata di Kota Malang "
                                  "yang terkenal dengan rumah-rumah berwarna "
                                  "cerah dan pemandangan yang menarik.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Mendorong konten mengisi sisa ruang bawah secara dinamis
                          Spacer(),

                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
