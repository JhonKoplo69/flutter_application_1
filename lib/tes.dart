import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Box with Item Example'),
        ),
        body: Center(
          child: Container(
            width: 344, // Lebar box
            height: 95, // Tinggi box
            alignment: Alignment.center, // Pusatkan item di dalam box
            decoration: BoxDecoration(
              color: Colors.black, // Warna latar belakang box
              borderRadius: BorderRadius.circular(10), // Border melengkung
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5, // Efek bayangan blur
                  offset: Offset(2, 2), // Posisi bayangan
                ),
              ],
            ),
            child: Row(
             children: [
               Image.asset('ássets/foto/PCX.jpg'),
               Text('PCX')
             ],
            )
        ),
      ),
    ),
    );
  }
}
