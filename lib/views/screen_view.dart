import 'package:flutter/material.dart';

class ScreenView extends StatelessWidget {
  final Color colorItem;

  const ScreenView({super.key, required this.colorItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen View'),
      ),
      body: Container(
        color: colorItem,

      ),
    );
  }
}
