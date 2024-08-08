import 'package:flutter/material.dart';
import 'app_bar.dart';

class TemperatureConversionScreen extends StatefulWidget {
  @override
  _TemperatureConversionScreenState createState() =>
      _TemperatureConversionScreenState();
}

class _TemperatureConversionScreenState
    extends State<TemperatureConversionScreen> {
  final TextEditingController _celsiusController = TextEditingController();
  final TextEditingController _fahrenheitController = TextEditingController();

  void _convertCelsius() {
    double celsius = double.tryParse(_celsiusController.text) ?? 0.0;
    double fahrenheit = (celsius * 9 / 5) + 32;
    _fahrenheitController.text = fahrenheit.toStringAsFixed(2);
  }

  void _convertFahrenheit() {
    double fahrenheit = double.tryParse(_fahrenheitController.text) ?? 0.0;
    double celsius = (fahrenheit - 32) * 5 / 9;
    _celsiusController.text = celsius.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 245, 209),
      appBar: buildAppBar('Sıcaklık Dönüştürücü'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            TextField(
              controller: _celsiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Celsius (°C)',
              ),
              onChanged: (text) {
                _convertCelsius();
              },
            ),
            SizedBox(height: 30.0),
            TextField(
              controller: _fahrenheitController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Fahrenheit (°F)',
              ),
              onChanged: (text) {
                _convertFahrenheit();
              },
            ),
          ],
        ),
      ),
    );
  }
}
