import 'package:flutter/material.dart';
import 'mile2km_screen.dart';
import 'app_bar.dart';
import 'weight_conversion_screen.dart';
import 'gallon2liter_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Ana Sayfa'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 117, 190, 226),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConversionScreen()),
                );
              },
              child: Text('Uzaklık Dönüştürme'),
            ),
            SizedBox(height: 18),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 117, 190, 226),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeightConversionScreen()),
                );
              },
              child: Text('Ağırlık Dönüştürme'),
            ),
            SizedBox(height: 18),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 117, 190, 226),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VolumeConversionScreen()),
                );
              },
              child: Text('Hacim Dönüştürme'),
            )
            // Diğer dönüştürme butonlarını buraya ekleyebilirsiniz.
          ],
        ),
      ),
    );
  }
}
