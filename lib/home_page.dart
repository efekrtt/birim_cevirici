import 'package:flutter/material.dart';
import 'mile2km.dart';
import 'app_bar.dart';

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
                  MaterialPageRoute(builder: (context) => ConversionScreen()),
                );
              },
              child: Text('Ağırlık Dönüştürme'),
            )
            // Diğer dönüştürme butonlarını buraya ekleyebilirsiniz.
          ],
        ),
      ),
    );
  }
}
