import 'package:flutter/material.dart';
import 'mile2km_screen.dart';
import 'app_bar.dart';
import 'pound2kg_screen.dart'; // Dosya adını burada güncelledik
import 'gallon2liter_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 245, 209),
      appBar: buildAppBar('Ana Sayfa'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 5, 133, 47),
                foregroundColor: Colors.white,
                minimumSize: Size(250, 50), // Boyutu burada ayarlayın
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // Yuvarlaklığı burada ayarlayın
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConversionScreen()),
                );
              },
              child: Text(
                'Uzaklık Dönüştürme',
                style: TextStyle(
                  fontSize: 18, // Yazı boyutunu burada ayarlayın
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 5, 133, 47),
                foregroundColor: Colors.white,
                minimumSize: Size(250, 50), // Boyutu burada ayarlayın
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // Yuvarlaklığı burada ayarlayın
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          VolumeConversionScreen()), // Sınıf adını burada güncelledik
                );
              },
              child: Text(
                'Ağırlık Dönüştürme',
                style: TextStyle(
                  fontSize: 18, // Yazı boyutunu burada ayarlayın
                ),
              ),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 5, 133, 47),
                foregroundColor: Colors.white,
                minimumSize: Size(250, 50), // Boyutu burada ayarlayın
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // Yuvarlaklığı burada ayarlayın
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VolumeConversionScreen(),
                  ),
                );
              },
              child: Text(
                'Hacim Dönüştürme',
                style: TextStyle(
                  fontSize: 18, // Yazı boyutunu burada ayarlayın
                ),
              ),
            ),
            // Diğer dönüştürme butonlarını buraya ekleyebilirsiniz.
          ],
        ),
      ),
    );
  }
}
