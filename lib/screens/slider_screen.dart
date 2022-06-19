import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _checkboxEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliders && Checks')),
      body: Column(
        children: [
          Slider.adaptive(
            value: _sliderValue,
            min: 100,
            max: 1000,
            activeColor: AppTheme.colorPrimary,
            onChanged: _checkboxEnabled ? (value) => setState(() {
              _sliderValue = value;
            }) : null
          ),

          // Checkbox(value: _checkboxValue, onChanged: null),

          CheckboxListTile(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.colorPrimary,
            value: _checkboxEnabled, 
            onChanged: (value)=> setState(() {
              _checkboxEnabled = value ?? true;
          })),

          SwitchListTile( 
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.colorPrimary,
            value: _checkboxEnabled,  
            onChanged: (value) => setState(() {
              _checkboxEnabled = value;
            })
          ),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                  image: const NetworkImage('https://www.pngmart.com/files/15/Flying-Hero-Transparent-PNG.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
