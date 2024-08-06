import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCount',
                style: const TextStyle(
                    fontSize: 120, fontWeight: FontWeight.w100)),
            const Text('puto si lo sigues leyendo',
                style: TextStyle(fontSize: 20)),
            const Text('triple  pluto si lo sigues',
                style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCount++;
          });
        },
        tooltip: 'Increment',
        child: const Icon(
          Icons.plus_one,
        ),
      ),
    );
  }
}
