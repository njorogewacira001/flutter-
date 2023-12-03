import 'package:flutter/material.dart';

class ForexPage extends StatelessWidget {
  final String widgetName;

  const ForexPage({required this.widgetName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forex Page'),
      ),
      body: Center(
        child: Text(widgetName),
      ),
    );
  }
}
