import 'package:flutter/material.dart';

class SliderApp extends StatelessWidget {
  const SliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Slider', style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Slider(
            value: _currentSliderValue,
            activeColor: Colors.black,
            inactiveColor: Colors.black12,
            max: 100,
            divisions: hashCode,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(
                () {
                  _currentSliderValue = value;
                },
              );
            },
          ),
          Text("Adjust Your Slider")
        ],
      ),
    );
  }
}
