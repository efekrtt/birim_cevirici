import 'package:flutter/material.dart';
import 'app_bar.dart';

class VolumeConversionScreen extends StatefulWidget {
  @override
  _VolumeConversionScreenState createState() => _VolumeConversionScreenState();
}

class _VolumeConversionScreenState extends State<VolumeConversionScreen> {
  final TextEditingController _literController = TextEditingController();
  final TextEditingController _gallonController = TextEditingController();
  final TextEditingController _ozController = TextEditingController();
  final TextEditingController _mlController = TextEditingController();

  void _convertLiterToOthers() {
    double liter = double.tryParse(_literController.text) ?? 0.0;
    double gallon = liter * 0.264172; // 1 liter = 0.264172 gallon
    double oz = liter * 33.814; // 1 liter = 33.814 oz
    double ml = liter * 1000; // 1 liter = 1000 ml

    _gallonController.text = gallon.toStringAsFixed(2);
    _ozController.text = oz.toStringAsFixed(2);
    _mlController.text = ml.toStringAsFixed(2);
  }

  void _convertGallonToOthers() {
    double gallon = double.tryParse(_gallonController.text) ?? 0.0;
    double liter = gallon / 0.264172; // 1 gallon = 3.78541 liters
    double oz = liter * 33.814; // 1 liter = 33.814 oz
    double ml = liter * 1000; // 1 liter = 1000 ml

    _literController.text = liter.toStringAsFixed(2);
    _ozController.text = oz.toStringAsFixed(2);
    _mlController.text = ml.toStringAsFixed(2);
  }

  void _convertOzToOthers() {
    double oz = double.tryParse(_ozController.text) ?? 0.0;
    double liter = oz / 33.814; // 1 oz = 0.0295735 liters
    double gallon = liter * 0.264172; // 1 liter = 0.264172 gallon
    double ml = liter * 1000; // 1 liter = 1000 ml

    _literController.text = liter.toStringAsFixed(2);
    _gallonController.text = gallon.toStringAsFixed(2);
    _mlController.text = ml.toStringAsFixed(2);
  }

  void _convertMlToOthers() {
    double ml = double.tryParse(_mlController.text) ?? 0.0;
    double liter = ml / 1000; // 1 ml = 0.001 liters
    double gallon = liter * 0.264172; // 1 liter = 0.264172 gallon
    double oz = liter * 33.814; // 1 liter = 33.814 oz

    _literController.text = liter.toStringAsFixed(2);
    _gallonController.text = gallon.toStringAsFixed(2);
    _ozController.text = oz.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 245, 209),
      appBar: buildAppBar('Hacim Dönüştürücü'),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            TextField(
              controller: _literController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Litre',
              ),
              onChanged: (text) {
                _convertLiterToOthers();
              },
            ),
            SizedBox(height: 25.0),
            TextField(
              controller: _mlController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ml',
              ),
              onChanged: (text) {
                _convertMlToOthers();
              },
            ),
            SizedBox(height: 25.0),
            TextField(
              controller: _gallonController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Galon',
              ),
              onChanged: (text) {
                _convertGallonToOthers();
              },
            ),
            SizedBox(height: 25.0),
            TextField(
              controller: _ozController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Oz',
              ),
              onChanged: (text) {
                _convertOzToOthers();
              },
            ),
          ],
        ),
      ),
    );
  }
}
