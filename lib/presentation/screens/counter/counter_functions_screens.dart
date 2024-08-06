import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Counter functions')),
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCount = 0;
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.add,
            onPressed: () {
              setState(() {
                clickCount++;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.remove,
            onPressed: () {
              setState(() {
                if (clickCount == 0) return;
                clickCount--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    required this.icon,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
