import 'package:flutter/material.dart';

class Alertdialogbox extends StatefulWidget {
  const Alertdialogbox({super.key});

  @override
  State<Alertdialogbox> createState() => _AlertdialogboxState();
}

class _AlertdialogboxState extends State<Alertdialogbox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[400],
      content: SizedBox(
        height: 150,
        child: const TextField(),
      ),
    );
  }
}
