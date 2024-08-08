import 'package:flutter/material.dart';
import 'app_bar.dart';

class ConversionScreen extends StatefulWidget {
  @override
  _ConversionScreenState createState() => _ConversionScreenState();
}

class _ConversionScreenState extends State<ConversionScreen> {
  final TextEditingController _kmController = TextEditingController();
  final TextEditingController _mileController = TextEditingController();

  void _convertKmToMile() {
    double km = double.tryParse(_kmController.text) ?? 0.0;
    double mile = km * 0.621371;
    _mileController.text = mile.toStringAsFixed(2);
  }

  void _convertMileToKm() {
    double mile = double.tryParse(_mileController.text) ?? 0.0;
    double km = mile / 0.621371;
    _kmController.text = km.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 245, 209),
      appBar: buildAppBar('Birim Dönüştürücü'),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            TextField(
              controller: _kmController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Kilometre',
              ),
              onChanged: (text) {
                _convertKmToMile();
              },
            ),
            SizedBox(height: 30.0),
            TextField(
              controller: _mileController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Mile',
              ),
              onChanged: (text) {
                _convertMileToKm();
              },
            ),
          ],
        ),
      ),
    );
  }
}
