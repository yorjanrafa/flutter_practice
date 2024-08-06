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
        title: Center(child: const Text('Counter screen')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCount',
                style: const TextStyle(
                    fontSize: 120, fontWeight: FontWeight.w100)),
            if (clickCount == 1)
              const Text('Click', style: TextStyle(fontSize: 20)),
            if (clickCount != 1)
              const Text('Clicks', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),

      // create a action button for decrement the counter
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  clickCount--;
                  if (clickCount < 0) {
                    clickCount = 0;
                  }
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  clickCount++;
                  if (clickCount > 10) {
                    clickCount = 0;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
