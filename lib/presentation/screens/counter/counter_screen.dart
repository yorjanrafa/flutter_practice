import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('10',
                style: TextStyle(fontSize: 120, fontWeight: FontWeight.w100)),
            Text('puto si lo sigues leyendo', style: TextStyle(fontSize: 20)),
            Text('triple pluto si lo sigues', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(
          Icons.plus_one,
        ),
      ),
    );
  }
}
