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
    void _decrement() {
      setState(() {
        _counter2--;
      });
    }
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _increment,
          child: const Text("Incremented"),
        ),
        const SizedBox(
          width: 25,
          height: 12,
        ),
        Text('Counter is equal to $_counter1'),
        FloatingActionButton(
          onPressed: _decrement,
          child: const Text("again decremented"),
        ),
        const SizedBox(
          width: 100,
          height: 20,
        ),
        Text("again counter is $_counter2"),
      ],
    );
  }
}
