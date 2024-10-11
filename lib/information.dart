import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InfoPage(),
    );
  }
}

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: 344,
          height: 52,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6), // Padding untuk dalam container
          decoration: BoxDecoration(
            color: Colors.white, // Latar belakang putih
            borderRadius: BorderRadius.circular(50), // Membuat sudut melengkung
            border: Border.all(color: Colors.blue, width: 3), // Warna border biru
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start, // Agar konten berurutan dari kiri ke kanan
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.blue), // Ikon kembali biru
                onPressed: () {
                  // Back button logic
                },
              ),
              SizedBox(width: 8), // Jarak antara ikon dan teks
              Expanded( // Expanded memastikan teks berada di sebelah kanan dan tidak terpotong
                child: Align(
                  alignment: Alignment.centerRight, // Mengatur teks agar berada di kanan
                  child: Text(
                    'Information',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 344,
          height: 565,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2), // Border untuk kotak utama
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Rentalin. id',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Version 2.24.18.80',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 40),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey.shade300,
                child: Icon(Icons.info, size: 40, color: Colors.black),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade400, // Warna latar belakang tombol
                  foregroundColor: Colors.white, // Warna teks tombol
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                onPressed: () {
                  // Contact Us button logic
                },
                child: Text('Contact Us'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade100,
    );
  }
}
