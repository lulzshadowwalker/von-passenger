import 'package:flutter/material.dart';
import 'package:core/services/greeter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(builder: (context) {
            return TextButton(
                onPressed: () {
                  final greeter = Greeter();
                  final greeting = greeter.greet('lulzie');

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(greeting),
                    ),
                  );
                },
                child: const Text('Greetings!'));
          }),
        ),
      ),
    );
  }
}
