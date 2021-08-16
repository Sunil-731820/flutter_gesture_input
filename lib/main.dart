import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Counter(),
      ),
    ),
  ));
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  int _counter1 = 0;
  int _counter2 = 100;
  void _increment() {
    setState(() {
      _counter1++;
    });
  }

  void _decrement() {
    setState(() {
      _counter2--;
    });
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(90.0),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _increment,
            child: const Text("Incremented"),
          ),
          const SizedBox(
            width: 50,
            height: 40,
          ),
          Text('Counter is equal to $_counter1'),
          FloatingActionButton(
            onPressed: _decrement,
            child: const Text("again decremented"),
          ),
          const SizedBox(
            width: 100,
            height: 40,
          ),
          Text("again counter is $_counter2"),
        ],
      ),
    );
  }
}
