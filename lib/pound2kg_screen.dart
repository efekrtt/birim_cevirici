import 'package:flutter/material.dart';
import 'app_bar.dart';

class WeightConversionScreen extends StatefulWidget {
  @override
  _WeightConversionScreenState createState() => _WeightConversionScreenState();
}

class _WeightConversionScreenState extends State<WeightConversionScreen> {
  final TextEditingController _poundController = TextEditingController();
  final TextEditingController _ounceController = TextEditingController();
  final TextEditingController _kgController = TextEditingController();

  void _convertPound() {
    double pound = double.tryParse(_poundController.text) ?? 0.0;
    double ounce = pound * 16;
    double kg = pound * 0.453592;
    _ounceController.text = ounce.toStringAsFixed(2);
    _kgController.text = kg.toStringAsFixed(2);
  }

  void _convertKg() {
    double kg = double.tryParse(_kgController.text) ?? 0.0;
    double pound = kg / 0.453592;
    double ounce = pound * 16;
    _poundController.text = pound.toStringAsFixed(2);
    _ounceController.text = ounce.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 245, 209),
      appBar: buildAppBar('Ağırlık Dönüştürücü'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _poundController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Pound (lb)',
              ),
              onChanged: (text) {
                _convertPound();
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _kgController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Kilogram (kg)',
              ),
              onChanged: (text) {
                _convertKg();
              },
            ),
          ],
        ),
      ),
    );
  }
}
