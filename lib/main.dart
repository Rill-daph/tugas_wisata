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
        extendBodyBehindAppBar:
            true, // Agar background gambar sampai ke belakang AppBar
        appBar: AppBar(
          backgroundColor: Color(0xffd2c7c7)
              .withOpacity(0.85), // Agak transparan agar menyatu
          elevation: 0,
          title: Row(
            children: [
              Icon(Icons.home,
                  color: Colors.black), // Icon rumah bawaan Flutter
              SizedBox(width: 8),
              Text(
                "Warna Warni Village",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            // 1. GAMBAR BACKGROUND UNTUK SELURUH LAYAR
            Positioned.fill(
              child: Image.asset(
                'assets/kampung-warna-warni-image-by-instagram-@fajarhw.png',
                fit: BoxFit.cover,
              ),
            ),

            // 2. LAPISAN OVERLAY HITAM TRANSPARAN (opsional, agar konten teks tetap mudah dibaca)
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),

            // 3. KONTEN UTAMA
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),

                    // ALAMAT DAN KONTAK
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white
                            .withOpacity(0.9), // Dibuat sedikit transparan
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

                    // DETAIL WISATA
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffd2c7c7).withOpacity(0.9),
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
