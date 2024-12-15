import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const App5());
}

class App5 extends StatelessWidget {
  const App5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
